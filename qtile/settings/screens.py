from libqtile.config import Screen
from libqtile import bar
from settings.widgets import init_widget_list,widget_defaults

def init_screen(n):
    screen = Screen(top=bar.Bar(init_widget_list(), size=24))
    screen_aux = Screen()
    if n==1: return screen
    if n==2: return screen_aux
    

screens = [
        init_screen(1),
        init_screen(1),
        # init_screen(2)
]

# fake_screens = [
        # Screen(top=bar.Bar(widgets=init_widget_list(), size=24),
            # x=0,
            # y=540,
            # width=1920,
            # height=1080 
            # ),
        # Screen(top=bar.Bar(widgets=init_widget_list()[:2], size=24),
            # x=1920,
            # y=0,
            # width=960,
            # height=1080
            # ),
        # Screen(top=bar.Bar(widgets=init_widget_list()[2:], size=24),
            # x=2880,
            # y=0,
            # width=960,
            # height=1080
            # ),
        # Screen(
            # x=1920,
            # y=0,
            # width=1920,
            # height=1080
            # ),
        # ]

