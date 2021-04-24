from libqtile import layout
from settings.theme import palette

layouts = [
    layout.MonadTall(border_focus=palette["green"], border_width=3 , padding = 0),
    #layout.Matrix(border_focus=purple, border_width=3),
    layout.Max(),
    # Try more layouts by unleashing below layouts.
    #layout.Floating(),
    #layout.Tile(),
    #layout.Stack(num_stacks=4),
    #layout.Bsp(),
    # layout.Columns(),
    # layout.MonadWide(),
    # layout.RatioTile(),
    # layout.TreeTab(),
    # layout.VerticalTile(),
    # layout.Zoomy(),
]


