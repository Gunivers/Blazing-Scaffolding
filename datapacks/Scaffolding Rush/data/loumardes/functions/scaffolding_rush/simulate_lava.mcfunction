# /!\ must be executed at the ScR_LavaLevel AEC
#/execute at @e[type=area_effect_cloud,tag=ScR_LavaLevel] run function loumardes:scaffolding_rush/rise_lava

#Local lava
execute if score PerformanceMode options matches 1 run function loumardes:scaffolding_rush/rise_lava_locally

#Lava Kill
execute store result score @s global run data get entity @s Pos[1]
execute if score @s global <= LavaLevel global unless entity @s[gamemode=spectator] unless score LavaLevel global matches 1 unless block ~-0.3 ~ ~-0.3 minecraft:scaffolding unless block ~-0.3 ~ ~0.3 minecraft:scaffolding unless block ~0.3 ~ ~-0.3 minecraft:scaffolding unless block ~0.3 ~ ~0.3 minecraft:scaffolding run kill @s[tag=!killed]

#Build Limit
execute unless entity @e[type=area_effect_cloud,tag=ScR_BuildLimit,limit=1] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["ScR_BuildLimit"]}

tp @e[type=area_effect_cloud,tag=ScR_BuildLimit,limit=1] ~ ~ ~
scoreboard players operation @e[type=area_effect_cloud,tag=ScR_BuildLimit,limit=1] global = LavaLevel options
scoreboard players operation @e[type=area_effect_cloud,tag=ScR_BuildLimit,limit=1] global += BuildHeight options
execute as @e[type=area_effect_cloud,tag=ScR_BuildLimit,limit=1] store result entity @s Pos[1] double 1 run scoreboard players get @s global

execute as @e[type=area_effect_cloud,tag=ScR_BuildLimit,limit=1] at @s run fill ~-7 ~1 ~-7 ~7 ~5 ~7 air
