scoreboard players operation @e[type=marker,name="ScR_Build"] YEntity = LavaLevel global
scoreboard players operation @e[type=marker,name="ScR_Build"] YEntity += BuildHeight options
execute as @e[type=marker,name="ScR_Build"] store result entity @s Pos[1] double 1 run scoreboard players get @s YEntity

execute as @e[type=marker,name="ScR_Build"] at @s run fill ~-90 ~ ~-90 ~90 ~ ~90 minecraft:air replace minecraft:moving_piston
