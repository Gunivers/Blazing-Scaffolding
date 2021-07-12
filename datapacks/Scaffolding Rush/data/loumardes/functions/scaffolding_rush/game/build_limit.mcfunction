scoreboard players operation @e[type=area_effect_cloud,name="ScR_BuildLimit"] YEntity = LavaLevel global
scoreboard players operation @e[type=area_effect_cloud,name="ScR_BuildLimit"] YEntity += BuildHeight options

execute as @e[type=area_effect_cloud,name="ScR_BuildLimit"] store result entity @s Pos[1] double 1 run scoreboard players get @s YEntity

execute as @e[type=area_effect_cloud,name="ScR_BuildLimit"] at @s run fill ~-90 ~1 ~-90 ~90 ~1 ~90 minecraft:moving_piston
execute as @e[type=area_effect_cloud,name="ScR_BuildLimit"] at @s run fill ~-90 ~0 ~-90 ~90 ~0 ~90 minecraft:air replace minecraft:moving_piston
