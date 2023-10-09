scoreboard players operation @e[type=marker,name="build"] pos.y = #lava.level data
scoreboard players operation @e[type=marker,name="build"] pos.y += BuildHeight options
execute as @e[type=marker,name="build"] store result entity @s Pos[1] double 1 run scoreboard players get @s pos.y
execute as @e[type=marker,name="build"] at @s run fill ~-90 ~ ~-90 ~90 ~ ~90 minecraft:air replace minecraft:moving_piston
