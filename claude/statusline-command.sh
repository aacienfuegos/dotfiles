#!/usr/bin/env bash
input=$(cat)

# Directory
cwd=$(echo "$input" | jq -r '.workspace.current_dir // empty')
[ -z "$cwd" ] && cwd="$(pwd)"
short_cwd="${cwd/#$HOME/\~}"

# ANSI colors
R="\033[00m"
BOLD_BLUE="\033[01;34m"
BOLD_CYAN="\033[01;36m"
BOLD_MAGENTA="\033[01;35m"
BOLD_GREEN="\033[01;32m"
RED="\033[31m"
GREEN="\033[32m"
CYAN="\033[36m"
BLUE="\033[34m"

# Git info via porcelain v2 (same data source as your zsh prompt)
git_str=""
if git -C "$cwd" rev-parse --is-inside-work-tree &>/dev/null 2>&1; then
  git_data=$(GIT_OPTIONAL_LOCKS=0 git -C "$cwd" status --branch --porcelain=v2 2>/dev/null)

  git_str=$(echo "$git_data" | awk \
    -v R="$R" \
    -v BOLD_CYAN="$BOLD_CYAN" \
    -v BOLD_MAGENTA="$BOLD_MAGENTA" \
    -v BOLD_GREEN="$BOLD_GREEN" \
    -v RED="$RED" \
    -v GREEN="$GREEN" \
    -v CYAN="$CYAN" \
    -v BLUE="$BLUE" \
    '
    BEGIN {
      ORS = "";
      head = ""; ahead = 0; behind = 0;
      staged = 0; unstaged = 0; untracked = 0; unmerged = 0; stashed = 0;
    }
    $2 == "branch.head" { head = $3 }
    $2 == "branch.oid"  { oid = substr($3,1,7) }
    $2 == "branch.ab"   { ahead = $3+0; behind = $4+0 }
    $1 == "?"           { untracked++ }
    $1 == "u"           { unmerged++ }
    $1 == "1" || $1 == "2" {
      split($2, a, "");
      if (a[1] != ".") staged++;
      if (a[2] != ".") unstaged++;
    }
    END {
      print BOLD_CYAN "[" R;

      if (head == "(detached)") {
        print BOLD_CYAN ":" R oid;
      } else {
        print BOLD_MAGENTA head R;
      }

      if (behind < 0) { printf "%s↓%d%s", CYAN, behind*-1, R }
      if (ahead  > 0) { printf "%s↑%d%s", CYAN, ahead,     R }

      print BOLD_CYAN "|" R;

      if (unmerged > 0) { printf "%s✖ %d%s", RED,        unmerged,  R }
      if (staged   > 0) { printf "%s● %d%s", GREEN,      staged,    R }
      if (unstaged > 0) { printf "%s✚ %d%s", RED,        unstaged,  R }
      if (untracked> 0) { printf "…%d",      untracked              }

      if (unmerged == 0 && staged == 0 && unstaged == 0 && untracked == 0) {
        print BOLD_GREEN "✔ " R;
      }

      print BOLD_CYAN "]" R;
    }
  ')
  git_str=" ${git_str}"
fi

# Helper: format seconds as e.g. 2h30m / 3d4h / 45m
fmt_duration() {
  local s=$1
  if   [ "$s" -le 0 ];     then echo "now"
  elif [ "$s" -lt 3600 ];  then echo "$((s/60))m"
  elif [ "$s" -lt 86400 ]; then
    local h=$((s/3600)) m=$(( (s%3600)/60 ))
    [ "$m" -eq 0 ] && echo "${h}h" || echo "${h}h${m}m"
  else
    local d=$((s/86400)) h=$(( (s%86400)/3600 ))
    [ "$h" -eq 0 ] && echo "${d}d" || echo "${d}d${h}h"
  fi
}

# Helper: color a pct string
color_pct() {
  local pct=$1 label=$2
  if   [ "$pct" -ge 80 ]; then printf "\033[01;31m%s\033[00m" "$label"
  elif [ "$pct" -ge 60 ]; then printf "\033[01;33m%s\033[00m" "$label"
  else                         printf "%s" "$label"
  fi
}

# Unified usage block [ctx:N% | 5h:N%↺Xh | 7d:N%↺Xd]
usage_str=""
ctx=$(echo "$input" | jq -r '.context_window.used_percentage // empty')
fh=$(echo "$input" | jq -r '.rate_limits.five_hour.used_percentage // empty')
fh_resets=$(echo "$input" | jq -r '.rate_limits.five_hour.resets_at // empty')
sd=$(echo "$input" | jq -r '.rate_limits.seven_day.used_percentage // empty')
sd_resets=$(echo "$input" | jq -r '.rate_limits.seven_day.resets_at // empty')

if [ -n "$ctx" ] || [ -n "$fh" ]; then
  now=$(date +%s)
  parts=""

  if [ -n "$ctx" ]; then
    ctx_int=$(printf '%.0f' "$ctx")
    parts="${parts}$(color_pct "$ctx_int" "ctx:${ctx_int}%")"
  fi

  if [ -n "$fh" ] && [ -n "$sd" ]; then
    fh_int=$(printf '%.0f' "$fh")
    sd_int=$(printf '%.0f' "$sd")
    fh_dur=$(fmt_duration $(( fh_resets - now )))
    sd_dur=$(fmt_duration $(( sd_resets - now )))
    [ -n "$parts" ] && parts="${parts} ${BOLD_CYAN}|${R} "
    parts="${parts}$(color_pct "$fh_int" "s(${fh_dur}):${fh_int}%") ${BOLD_CYAN}|${R} $(color_pct "$sd_int" "w(${sd_dur}):${sd_int}%")"
  fi

  usage_str="${BOLD_CYAN}[${R}${parts}${BOLD_CYAN}]${R}"
fi

# Right-align usage block
left_raw="${BOLD_BLUE}${short_cwd}${R}${git_str}"
if [ -n "$usage_str" ]; then
  strip() { printf '%b' "$1" | sed 's/\x1b\[[0-9;]*m//g' | tr -d '\n'; }
  left_len=$(strip "$left_raw" | wc -m)
  right_len=$(strip "$usage_str" | wc -m)
  cols=$(stty size </dev/tty 2>/dev/null | awk '{print $2}')
  [ -z "$cols" ] && cols=$(tput cols 2>/dev/null)
  [ -z "$cols" ] && cols=${COLUMNS:-80}
  pad=$(( cols - left_len - right_len - 4 ))
  [ "$pad" -lt 1 ] && pad=1
  printf "%b%${pad}s%b" "$left_raw" "" "$usage_str"
else
  printf '%b' "$left_raw"
fi
