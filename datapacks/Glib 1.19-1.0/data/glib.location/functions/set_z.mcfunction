#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib.location:set_z
# Parallelizable: true
# Note: It was excessively more impressive in 1.12...

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.locZ dummy [{"text":"GLib ","color":"gold"},{"text":"Location Z","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

execute if entity @s[type=minecraft:player] run function glib.location:set_z/child/player
execute if entity @s[type=!minecraft:player] store result entity @s Pos[2] double 1 run scoreboard players add @s glib.locZ 0
