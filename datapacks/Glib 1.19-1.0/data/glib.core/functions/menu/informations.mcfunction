# NAME: Menu G-Lib
# PATH: glib:menu

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13

# REQUIEREMENTS:

# INPUT:

# OUTPUT:


# NOTE:

# CONFIGURATION:


# CODE:
tellraw @s ["",{"text":"\n   x","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/tag @s remove glib.menu.Informations"},"hoverEvent":{"action":"show_text","value":"Exit informations"}},{"text":"   ","color":"gold"},{"text":"Informations","underlined":true,"color":"gold"},{"text":"\n "}]

tellraw @s ["",{"text":"      "},{"text":"> Documentation","color":"green","clickEvent":{"action":"open_url","value":"https://glib-core.readthedocs.io//documentation-en"},"hoverEvent":{"action":"show_text","value":"Read our documentation"}}]
tellraw @s ["",{"text":"\n      "},{"text":"> Official Website","color":"gold","clickEvent":{"action":"open_url","value":"https://gunivers.net/gunivers-lib/"},"hoverEvent":{"action":"show_text","value":"Go to our website (in french)"}}]
tellraw @s ["",{"text":"\n      "},{"text":"> Our Discord","color":"blue","clickEvent":{"action":"open_url","value":"https://discord.gg/E8qq6tN"},"hoverEvent":{"action":"show_text","value":"Join our Discord server !"}}]
tellraw @s ["",{"text":"\n      "},{"text":"> Help us","color":"red","clickEvent":{"action":"open_url","value":"https://utip.io/gunivers/"},"hoverEvent":{"action":"show_text","value":"You can help us by become a patron !"}}]
