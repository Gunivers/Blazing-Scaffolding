execute as @a at @s run summon minecraft:area_effect_cloud ~ 0 ~ {Duration:2147483647, CustomName:'{"text":"ScR_Build"}'}

scoreboard players operation @e[type=area_effect_cloud,name="ScR_Build"] YEntity = LavaLevel global
scoreboard players operation @e[type=area_effect_cloud,name="ScR_Build"] YEntity += BuildHeight options

execute as @e[type=area_effect_cloud,name="ScR_Build"] store result entity @s Pos[1] double 1 run scoreboard players get @s YEntity

execute store result score @s global as @e[type=area_effect_cloud,name="ScR_Build",limit=1] at @a[gamemode=!spectator] run fill ~-7 ~1 ~-7 ~7 ~1 ~7 minecraft:moving_piston
execute store result score @s global as @e[type=area_effect_cloud,name="ScR_Build",limit=1] at @s run fill ~-90 ~0 ~-90 ~90 ~0 ~90 minecraft:air replace minecraft:moving_piston
kill @e[type=minecraft:area_effect_cloud,name="ScR_Build"]
