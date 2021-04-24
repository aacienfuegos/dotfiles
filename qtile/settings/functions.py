from libqtile.lazy import lazy
import subprocess
from settings.variables import my_term
from settings.theme import palette

 # My functions
def kb_layout():
    layout_cmd = subprocess.run('xkb-switch', stdout=subprocess.PIPE)
    layout = layout_cmd.stdout.decode('utf-8')
    # layout = layout[2:4]
    return layout[0:2].upper()

def song():
    song = ''
    status = subprocess.run('playerctl -p spotifyd status',shell=True, stdout=subprocess.PIPE).stdout.decode('utf-8').replace('\n','')
    if(status=="Playing"):
        song = subprocess.run('playerctl -p spotifyd metadata title',shell=True, stdout=subprocess.PIPE).stdout.decode('utf-8').replace('\n','')

    return song

def calendar():
    cmd = subprocess.run("khal list --notstarted now tomorrow | awk 'FNR == 2 {print $0}'", shell=True, stdout=subprocess.PIPE)
    event = cmd.stdout.decode('utf-8').replace('\n','')
    # layout = layout[2:4]
    return event


# Setting color of widgets
n = 0
def color_widget(switch=False):
    global n
    if(switch):
        n += 1

    if(n%2==0):
        color = palette["cyan"]
    else:
        color = palette["green"]

    return color



## Mouse Callbacks
def update():
    lazy.spawn(my_term+" -e 'sudo pacman -Syu'")

