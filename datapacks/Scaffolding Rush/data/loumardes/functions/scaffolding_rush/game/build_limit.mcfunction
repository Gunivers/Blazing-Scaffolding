#move it to the player coordinates and build limit height
tp @e[type=area_effect_cloud,name="ScR_BuildLimit",limit=1] ~ ~ ~
scoreboard players operation @e[type=area_effect_cloud,name="ScR_BuildLimit",limit=1] YEntity = LavaLevel global
scoreboard players operation @e[type=area_effect_cloud,name="ScR_BuildLimit",limit=1] YEntity += BuildHeight options
execute as @e[type=area_effect_cloud,name="ScR_BuildLimit",limit=1] store result entity @s Pos[1] double 1 run scoreboard players get @s YEntity

execute store result score @s global as @e[type=area_effect_cloud,name="ScR_BuildLimit",limit=1] at @s run fill ~-7 ~1 ~-7 ~7 ~1 ~7 minecraft:moving_piston replace minecraft:air
execute unless score @s global matches 0 run tellraw @s ["",{"text":"build_limit","color":"dark_gray"}]

execute as @e[type=area_effect_cloud,name="ScR_Build"] at @s run fill ~-90 ~ ~-90 ~90 ~ ~90 minecraft:air replace minecraft:moving_piston
