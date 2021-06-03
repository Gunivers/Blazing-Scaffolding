# /!\ must be executed at the ScR_LavaLevel AEC
#/execute at @e[type=area_effect_cloud,tag=ScR_LavaLevel] run function loumardes:scaffolding_rush/rise_lava

tp @e[type=area_effect_cloud,tag=ScR_LavaLevel,limit=1] @s
execute store result entity @e[type=area_effect_cloud,tag=ScR_LavaLevel,limit=1] Pos[1] double 1 run scoreboard players get LavaLevel constant

execute unless score LavaLevel constant matches 1 as @e[type=area_effect_cloud,tag=ScR_LavaLevel,limit=1] at @s run fill ~-7 ~-1 ~-7 ~7 ~-1 ~7 magma_block

execute store result score @s[gamemode=survival] constant run data get entity @s Pos[1]
execute if score @s constant <= LavaLevel constant unless score LavaLevel constant matches 1 run kill @s[gamemode=survival]