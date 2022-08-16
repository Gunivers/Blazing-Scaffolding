#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: theogiraudet & leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.15.2

# Original path: glib.orientation:add
# Documentation: https://glib-core.readthedocs.io//entity#orientation
# Parallelizable: <true/false/global>
# Note: It was excessively more impressive in 1.12 ...

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT



#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Tags:["Glib","SetRotation"]}
tp @e[tag=Glib,tag=SetRotation,limit=1,sort=nearest] @s
execute as @e[tag=Glib,tag=SetRotation,limit=1,sort=nearest] at @s run function glib.orientation:get
scoreboard players operation @s glib.var0 += @e[tag=Glib,tag=SetRotation,limit=1,sort=nearest] glib.ori.h


execute store result entity @e[type=armor_stand,tag=SetRotation,limit=1] Rotation[0] float 1 run scoreboard players get @s glib.var0
tp @s @e[type=armor_stand,tag=SetRotation,limit=1]
kill @e[type=armor_stand,tag=SetRotation,limit=1]
