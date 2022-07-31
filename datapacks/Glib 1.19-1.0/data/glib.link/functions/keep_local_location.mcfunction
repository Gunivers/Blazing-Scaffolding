#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.16.1

# Original path: glib.link:keep_local_location
# Parallelizable: true
# Note: @s must have glib.link.to defined (equal to another entity id)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.link.lx dummy [{"text":"GLib ","color":"gold"},{"text":"Link Local X","color":"dark_gray"}]
scoreboard objectives add glib.link.ly dummy [{"text":"GLib ","color":"gold"},{"text":"Link Local Y","color":"dark_gray"}]
scoreboard objectives add glib.link.lz dummy [{"text":"GLib ","color":"gold"},{"text":"Link Local Z","color":"dark_gray"}]
scoreboard objectives add glib.link.to dummy [{"text":"GLib ","color":"gold"},{"text":"Link To","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# Check link source
scoreboard players operation @s glib.targetId = @s glib.link.to
function glib.id:check

execute at @e[tag=glib.id.match,limit=1,sort=nearest] run function glib.core:default_entity

scoreboard players operation @e[tag=glib.new,limit=1,sort=nearest] glib.vectorLeft = @s glib.link.lx
scoreboard players operation @e[tag=glib.new,limit=1,sort=nearest] glib.vectorUp = @s glib.link.ly
scoreboard players operation @e[tag=glib.new,limit=1,sort=nearest] glib.vectorFront = @s glib.link.lz
scoreboard players set @e[tag=glib.new,limit=1,sort=nearest] VectorSpeedLocal 1000

execute as @e[tag=glib.new,limit=1,sort=nearest] at @s run function glib.move:by_local_vector

execute positioned as @e[tag=glib.new,limit=1,sort=nearest] run tp @s ~ ~ ~
kill @e[tag=glib.new]
