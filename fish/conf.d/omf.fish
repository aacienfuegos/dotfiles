# General
set fish_greeting

# Ssh-agent
set SSH_AUTH_SOCK "$XDG_RUNTIME_DIR/ssh-agent.socket"

# Custom variables
set MY_TERM 'alacritty'
set MY_BROWSERb 'brave'

# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
	or set -gx OMF_PATH "$HOME/.local/share/omf"
  #or set -gx OMF_PATH "$HOME/.config/fish/conf.d"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

set -g theme_display_date no
set -g theme_powerline_fonts yes
set -g theme_nerd_fonts yes
set -g theme_color_scheme nord
set -g theme_display_cmd_duration yes
set -g theme_title_display_process yes

# Lolcat + Spark 
seq 1 (tput cols) | sort -R | spark | lolcat; echo

# Alias
alias poff="poweroff"
alias p="sudo pacman -S"

alias update="sudo pacman -Syu"
alias remove="sudo pacman -Rs"

alias ls="exa"
alias la="exa -a"
alias ll="exa -lh"

alias cat="bat"
alias fd="fd --hidden"
alias ps="procs"
alias vim="nvim"

alias ufws="sudo ufw status numbered"

alias qonfig="vim ~/.config/qtile/config.py"
alias mpow="sh $HOME/.scripts/mpow.sh"
alias msfconsole="msfconsole --quiet -x \"db_connect $USER@msf\""
alias py="python"
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME' 
alias spoti='killall spotifyd && spotifyd'

