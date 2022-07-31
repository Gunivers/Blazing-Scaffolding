#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.16.1

# Original path: glib.link:imitate_loc_x
# Parallelizable: true
# Note: @s must have glib.link.to defined (equal to another entity glib.id)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.link.rx dummy [{"text":"GLib ","color":"gold"},{"text":"Relative position X","color":"dark_gray"}]
scoreboard objectives add glib.link.to dummy [{"text":"GLib ","color":"gold"},{"text":"Linked to","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s glib.targetId = @s glib.link.to
function glib.id:check

#   Relative Position
execute at @e[tag=glib.id.match,limit=1,sort=nearest] run function glib.location:get_x/accuracy/10-3
scoreboard players operation @s glib.locX += @s glib.link.rx

function glib.location:set_x/accuracy/10-3
