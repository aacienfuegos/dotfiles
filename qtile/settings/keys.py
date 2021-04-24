from libqtile.config import Key
from libqtile.lazy import lazy
import os
from settings.theme import palette,colors,bg,white,black
from settings.groups import groups
from settings.variables import my_term,my_browser

mod = "mod4"
alt = "mod1"
kp= ["KP_Insert",
    "KP_End",
    "KP_Down",
    "KP_Next",
    "KP_Left",
    "KP_Begin",
    "KP_Right",
    "KP_Home",
    "KP_Up",
    "KP_Prior",]

# Keys
keys = [
    # Switch between windows in current stack pane
    Key([mod], "j", lazy.layout.down()),
    Key([mod], "k", lazy.layout.up()),

    # Move windows up or down in current stack
    Key([mod, "control"], "j", lazy.layout.shuffle_down()),
    Key([mod, "control"], "k", lazy.layout.shuffle_up()),

    # Resize windows
    Key([mod, "shift"], "h", lazy.layout.grow()),
    Key([mod, "shift"], "l", lazy.layout.shrink()),

    # Toggle between different layouts as defined below
    Key([mod], "Tab", lazy.next_layout()),
    Key([mod], "w", lazy.window.kill()),

    Key([mod, "control"], "r", lazy.restart()),
    Key([mod, "control"], "q", lazy.shutdown()),
    
    # Function Keys
    Key([], "XF86AudioMute", lazy.spawn("pamixer -t --set-volume 50")),
    Key([], "XF86AudioLowerVolume", lazy.spawn("pamixer -ud 2")),
    Key([], "XF86AudioRaiseVolume", lazy.spawn("pamixer -ui 2")),
    Key([], "XF86AudioPlay", lazy.spawn("playerctl play-pause")),
    Key([], "XF86AudioStop", lazy.spawn("playerctl stop")),
    Key([], "XF86AudioPrev", lazy.spawn("playerctl previous")),
    Key([], "XF86AudioNext", lazy.spawn("playerctl next")),
    Key([], "XF86Tools", lazy.spawn(my_term + " -e sh /home/aacienfuegos/.scripts/spt.sh")),

    Key([], "XF86Mail", lazy.spawn("thunderbird")),
    Key([], "XF86Search", lazy.spawn(my_browser)),
    Key([], "XF86Calculator", lazy.spawn("qalculate-gtk")),

    Key([], "XF86MonBrightnessUp", lazy.spawn("xbacklight -inc 2")),
    Key([], "XF86MonBrightnessDown", lazy.spawn("xbacklight -dec 2")),
    Key([], "Print", lazy.spawn("flameshot gui")),

    #Media Control
    Key([alt], kp[1], lazy.spawn("playerctl -p spotifyd previous")),
    Key([alt], kp[2], lazy.spawn("playerctl -p spotifyd play-pause")),
    Key([alt], kp[3], lazy.spawn("playerctl -p spotifyd next")),
    
    Key([alt, "shift"], kp[1], lazy.spawn("playerctl -p firefox previous")),
    Key([alt, "shift"], kp[2], lazy.spawn("playerctl -p firefox play-pause")),
    Key([alt, "shift"], kp[3], lazy.spawn("playerctl -p firefox next")),

    # Dmenu
    Key([mod], "space", lazy.spawn("/home/aacienfuegos/.scripts/dmenu/dmenu_run")),
    # Key([mod], "v", lazy.spawn("python /home/aacienfuegos/.scripts/dmenu/vpn.py")),
    Key([mod, "shift"],"s", lazy.spawn("python /home/aacienfuegos/.scripts/dmenu/spotify.py")),
    # Key([mod], "c", lazy.spawn("python /home/aacienfuegos/.scripts/dmenu/calendars.py")),
    # Key([mod], "b", lazy.spawn("python /home/aacienfuegos/.scripts/dmenu/bluetooth.py")),
    Key([alt], "space", lazy.spawn("python /home/aacienfuegos/.scripts/dmenu/bookmarks.py")),
    Key([mod, "shift"], "space", lazy.spawn("/home/aacienfuegos/.scripts/dmenu/passmenu")),

    # Apps
    Key([mod], "Return", lazy.spawn(my_term + " -e fish")),
    Key([mod], "BackSpace", lazy.spawn("systemctl suspend")),
    
    Key([alt], "Return", lazy.spawn(my_browser)),
    Key([mod, "shift"], "Return", lazy.spawn("dolphin")),
    Key([mod], "o", lazy.spawn("okular")),
    Key([mod], "l", lazy.spawn("libreoffice")), 
    Key([mod], "m", lazy.spawn(my_term + " -e neomutt")),
    Key([mod], "c", lazy.spawn(my_term + " -e ikhal")),
    Key([mod], "n", lazy.spawn(my_browser + " --new-window https://nextcloud.ciencre.xyz")), 
    Key([mod, "shift"], "n", lazy.spawn("nextcloud")), 
    Key([mod], "t", lazy.spawn("thunderbird")), 
    Key([mod], "s", lazy.spawn(my_term + " -e sh /home/aacienfuegos/.scripts/spt.sh")),
    Key([mod], "h", lazy.spawn(my_term + " -e htop")), 
    Key([mod], "b", lazy.spawn("blueman-manager")),
    Key([mod], "p", lazy.spawn("pavucontrol")),
]


for i in range(6):
    keys.extend([
        # mod1 + letter of group = switch to group
        Key([mod], str(i+1), lazy.group[groups[i].name].toscreen(0)),
        Key([mod], kp[i+1], lazy.group[groups[i].name].toscreen(0)),

        # mod1 + shift + letter of group = switch to & move focused window to group
        Key([mod, 'control'], str(i+1), lazy.window.togroup(groups[i].name, switch_group=False)),
        Key([mod, 'control'], kp[i+1], lazy.window.togroup(groups[i].name, switch_group=False)),

        # Or, use below if you prefer not to switch to that group.
        # # mod1 + shift + letter of group = move focused window to group
        # Key([mod, "shift"], i.name, lazy.window.togroup(i.name)),
    ])

for i in range(3):
    ind = i+6
    keys.extend([
        Key([mod], str(ind+1), lazy.group[groups[ind].name].toscreen(-1)),
        Key([mod], kp[ind+1], lazy.group[groups[ind].name].toscreen(-1)),
        Key([mod, 'control'], str(ind+1), lazy.window.togroup(groups[ind].name)),
        Key([mod, 'control'], kp[ind+1], lazy.window.togroup(groups[ind].name)),
    ])

keys.extend([
    Key([mod], str(0), lazy.group[groups[9].name].toscreen(-1)),
    Key([mod], kp[0], lazy.group[groups[9].name].toscreen(-1)),
    Key([mod, 'control'], str(0), lazy.window.togroup(groups[9].name)),
    Key([mod, 'control'], kp[0], lazy.window.togroup(groups[9].name)),
    ])
