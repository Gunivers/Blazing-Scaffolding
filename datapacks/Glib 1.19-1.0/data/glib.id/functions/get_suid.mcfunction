#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check: 1.15.2

# Original path: entity/id/getsuid
# Documentation: https://glib-core.readthedocs.io//entity#id
# Parallelizable: true
# Note: Gives a unique identifier to the source entity
# - To reset SUID, set the entity score "SUID" at 0 and make it execute this function.

#__________________________________________________
# PARAMETERS

# Output: SUID (score): Simple Unique ID

#__________________________________________________
# INIT

scoreboard objectives add glib.id dummy [{"text":"GLib ","color":"gold"},{"text":"ID","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players add @s glib.id 0

execute if entity @s[scores={glib.id=0}] run scoreboard players add id.simple glib.data 1
execute if entity @s[scores={glib.id=0}] run scoreboard players operation @s glib.id = id.simple glib.data

tag @s add glib.id.set
tag @s remove glib.id.type.cuid
tag @s add glib.id.type.suid
