summon armor_stand ~ ~-2.1 ~ {Marker:1,NoGravity:1,Invisible:1,Tags:["ender_pearl","ender_pearl_new"],ArmorItems:[{},{},{},{id:"minecraft:ender_pearl",Count:1b}]}

function glib.vector:classic/get_from_motion

execute as @e[tag=ender_pearl_new] run scoreboard players operation @s glib.targetId = @p[scores={UsedEnderpearl=1..}] glib.id

scoreboard players remove @p[scores={UsedEnderpearl=1..}] sc.item.real.ender_pearl 1

scoreboard players set @a UsedEnderpearl 0

scoreboard players operation @e[tag=ender_pearl_new] glib.vectorX = @s glib.vectorX
scoreboard players operation @e[tag=ender_pearl_new] glib.vectorY = @s glib.vectorY
scoreboard players operation @e[tag=ender_pearl_new] glib.vectorZ = @s glib.vectorZ
scoreboard players set @e[tag=ender_pearl_new] glib.collision 5
scoreboard players set @e[tag=ender_pearl_new] glib.precision 100
tag @e remove ender_pearl_new
tag @s add old_ender_pearl
kill @s
