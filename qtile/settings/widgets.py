from libqtile import layout, bar, widget, hook
from libqtile.lazy import lazy
import os
import subprocess
import fontawesome as fa
from settings.theme import palette,bg,white,black
from settings.variables import my_term, my_size
from settings.functions import kb_layout, song, update, color_widget, calendar


def init_widget_list():
    widget_list = [
        widget.CurrentLayoutIcon(padding=10),
                  
        widget.GroupBox(
            this_current_screen_border=palette["blue"],
            urgent_border = palette["red"],
        ),
                  
        widget.Prompt(padding=10, font='mono', prompt='run: ', foreground='ffdf29', fontsize='14'),
                  
        widget.Spacer(bar.STRETCH),

         widget.Systray(),

         widget.TextBox(
            text = '\ue0b2',
            fontsize = 40,
            foreground = color_widget(),
            padding = 0
         ),

         widget.Volume(
            emoji = True,
            font = 'FontAwesome',
            fontsize = 15,
            background = color_widget(),
          ),

          widget.Volume(
             padding = 4,
             background = color_widget(),
          ),
          
          widget.TextBox(
             text = '\ue0b2',
             fontsize = 40,
             background = color_widget(),
             foreground = color_widget(switch=True),
          ),

          widget.TextBox(
             # text = fa.icons['music'] + ' ', 
             text = "♫ ",
             fontsize = 20,
             background = color_widget(),
          ),

          widget.GenPollText(
             background = color_widget(),
             func = song,
             update_interval = 3,

          ), 
          
          widget.TextBox(
             text = '\ue0b2',
             fontsize = 40,
             background = color_widget(),
             foreground = color_widget(switch=True),
          ),
          
          widget.TextBox(
             text = fa.icons['keyboard'] + ' ', 
             fontsize = 20,
             background = color_widget(),
          ),

          widget.GenPollText(
             background = color_widget(),
             func = kb_layout,
             update_interval = 3,

          ), 
          
          widget.TextBox(
             text = '\ue0b2',
             fontsize = 40,
             background = color_widget(),
             foreground = color_widget(switch=True),
          ),

          widget.TextBox(
             text = fa.icons['sync'], 
             background = color_widget(),
             mouse_callbacks = {'Button1': update()},
          ),

          widget.CheckUpdates(
              update_interval=60, 
              foreground = black,
              colour_have_updates = black,
              background = color_widget(),
              distro = 'Arch_checkupdates',
              display_format = 'Updates: {updates}',
              mouse_callbacks = {'Button1': update()},
          ),
                      
           widget.TextBox(
              text = '\ue0b2',
              fontsize = 40,
              background = color_widget(),
              foreground = color_widget(switch=True),
           ),

           widget.TextBox(
              text=fa.icons['wifi'] + ' ',
              background = color_widget(),
           ),

           widget.Wlan(
              interface='wlo1', 
              background = color_widget(),
              #format='{essid}',
              format='{essid} {percent:2.0%}',
           ),
            
           widget.TextBox(
              text = '\ue0b2',
              fontsize = 40,
              background = color_widget(),
              foreground = color_widget(switch=True),
           ),

           widget.BatteryIcon(
              background = color_widget(),
              theme_path = '/usr/share/icons/Adwaita/16x16',
           ),
                    
           widget.Battery(
              format='{percent:2.0%}',
              update_interval=60, 
              background = color_widget(),
           ),
            
           widget.TextBox(
              text = '\ue0b2',
              fontsize = 40,
              background = color_widget(),
              foreground = color_widget(switch=True),
           ),

          widget.TextBox(
             text = fa.icons['calendar'] + ' ', 
             background = color_widget(),
          ),

          widget.GenPollText(
             background = color_widget(),
             func = calendar,
             update_interval = 3,

          ), 
          
          widget.TextBox(
             text = '\ue0b2',
             fontsize = 40,
             background = color_widget(),
             foreground = color_widget(switch=True),
          ),

           widget.TextBox(
              text=fa.icons['clock'] + ' ',
              background = color_widget(),
           ),
            
           widget.Clock(
              # format ='%B %-d %Y ', 
              format ='%a %-d/%-m/%Y |', 
              background = color_widget(),
           ),
           
           widget.Clock(
              format ='%H:%M ', 
              background = color_widget(),
              font = 'Roboto Mono Bold for Powerline',
              fontsize = 13,
           ),
    ]
    return widget_list


widget_defaults = dict(
    font = 'Roboto Mono Light for Powerline',
    fontsize=13,
    padding= 3,
    foreground = black,
    background = bg,
)

extension_defaults = widget_defaults.copy()

