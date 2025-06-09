summon armor_stand ~ ~-2.1 ~ {Marker:1,NoGravity:1,Invisible:1,Tags:["ender_pearl","ender_pearl_new"],ArmorItems:[{},{},{},{id:"minecraft:ender_pearl",Count:1b}]}

function glib.vector:classic/get_from_motion

execute on origin run scoreboard players operation @e[tag=ender_pearl_new] glib.targetId = @s glib.id
scoreboard players operation @e[tag=ender_pearl_new] glib.vectorX = @s glib.vectorX
scoreboard players operation @e[tag=ender_pearl_new] glib.vectorY = @s glib.vectorY
scoreboard players operation @e[tag=ender_pearl_new] glib.vectorZ = @s glib.vectorZ
scoreboard players set @e[tag=ender_pearl_new] glib.collision 5
scoreboard players set @e[tag=ender_pearl_new] glib.precision 100

execute on origin run scoreboard players remove @s player.item.real.ender_pearl 1
tag @e remove ender_pearl_new
kill @s
