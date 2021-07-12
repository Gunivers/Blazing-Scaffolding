#move it to the player coordinates and build limit height
tp @e[type=area_effect_cloud,name="ScR_BuildLimit"] ~ ~ ~
scoreboard players operation @e[type=area_effect_cloud,name="ScR_BuildLimit"] YEntity = LavaLevel global
scoreboard players operation @e[type=area_effect_cloud,name="ScR_BuildLimit"] YEntity += BuildHeight options
execute as @e[type=area_effect_cloud,name="ScR_BuildLimit"] store result entity @s Pos[1] double 1 run scoreboard players get @s YEntity

execute store result score @s global as @e[type=area_effect_cloud,name="ScR_BuildLimit"] at @s run fill ~-7 ~1 ~-7 ~7 ~1 ~7 minecraft:moving_piston replace minecraft:air
