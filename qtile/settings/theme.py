import yaml

# Colors
white = '#ffffff'
black = '#000000'

with open(r"/home/aacienfuegos/themes/nord/nord.yml") as file:
    theme =  yaml.load(file, Loader=yaml.FullLoader)

palette = theme["colors"]["normal"]
bg = theme["colors"]["primary"]["background"]

colors = [palette["green"], palette["cyan"], palette["green"], palette["cyan"], palette["green"], palette["cyan"],]


