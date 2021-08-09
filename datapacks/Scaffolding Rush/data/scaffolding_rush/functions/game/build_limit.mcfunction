#move it to the player coordinates and build limit height
tp @e[type=marker,name="ScR_BuildLimit"] ~ ~ ~
scoreboard players operation @e[type=marker,name="ScR_BuildLimit"] YEntity = LavaLevel global
scoreboard players operation @e[type=marker,name="ScR_BuildLimit"] YEntity += BuildHeight options
execute as @e[type=marker,name="ScR_BuildLimit"] store result entity @s Pos[1] double 1 run scoreboard players get @s YEntity

execute as @e[type=marker,name="ScR_BuildLimit"] at @s run fill ~-5 ~1 ~-5 ~5 ~1 ~5 minecraft:moving_piston replace minecraft:air
