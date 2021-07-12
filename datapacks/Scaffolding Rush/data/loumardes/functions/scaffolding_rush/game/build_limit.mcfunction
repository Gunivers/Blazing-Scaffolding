scoreboard players operation @e[type=area_effect_cloud,name="ScR_BuildLimit",limit=1] YEntity = LavaLevel global
scoreboard players operation @e[type=area_effect_cloud,name="ScR_BuildLimit",limit=1] YEntity += BuildHeight options
execute as @e[type=area_effect_cloud,name="ScR_BuildLimit",limit=1] store result entity @s Pos[1] double 1 run scoreboard players get @s YEntity

execute store result score @s global as @e[type=area_effect_cloud,name="ScR_BuildLimit",limit=1] at @s run fill ~-90 ~1 ~-90 ~90 ~1 ~90 minecraft:moving_piston
execute store result score @s global as @e[type=area_effect_cloud,name="ScR_BuildLimit",limit=1] at @s run fill ~-90 ~0 ~-90 ~90 ~0 ~90 minecraft:air
