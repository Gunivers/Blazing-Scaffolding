# /!\ must be executed at the ScR_LavaLevel AEC
#/execute at @e[type=area_effect_cloud,tag=ScR_LavaLevel] run function loumardes:scaffolding_rush/rise_lava


execute if score PerformanceMode constant matches 0 run fill -90 ~ -90 90 ~ 90 bedrock replace scaffolding
execute if score PerformanceMode constant matches 0 run fill -90 ~ -90 90 ~ 90 lava replace air
execute if score PerformanceMode constant matches 0 run fill -90 ~-1 -90 90 ~-1 90 bedrock

execute if score PerformanceMode constant matches 1 run fill -90 ~ -90 90 ~ 90 red_concrete

execute as @e[type=area_effect_cloud,tag=ScR_LavaLevel] at @s run tp @s ~ ~1 ~