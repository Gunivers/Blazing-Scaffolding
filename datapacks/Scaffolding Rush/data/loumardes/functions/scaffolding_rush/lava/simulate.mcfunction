# /!\ must be executed at the ScR_LavaLevel AEC

#Local lava
execute if score PerformanceMode options matches 1 run function loumardes:scaffolding_rush/lava/rise_locally

#Lava Kill
execute store result score @s[scores={killed=0}] global run data get entity @s Pos[1]
execute if score @s[scores={killed=0}] global <= LavaLevel global unless entity @s[gamemode=spectator] unless score LavaLevel global matches 1 unless block ~-0.3 ~ ~-0.3 minecraft:scaffolding unless block ~-0.3 ~ ~0.3 minecraft:scaffolding unless block ~0.3 ~ ~-0.3 minecraft:scaffolding unless block ~0.3 ~ ~0.3 minecraft:scaffolding run kill @s

#Build Limit
execute unless entity @e[type=area_effect_cloud,name=ScR_BuildLimit,limit=1] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647, CustomName:'{"text":"ScR_BuildLimit"}'}

tp @e[type=area_effect_cloud,name=ScR_BuildLimit,limit=1] ~ ~ ~
scoreboard players operation @e[type=area_effect_cloud,name=ScR_BuildLimit,limit=1] global = LavaLevel global
scoreboard players operation @e[type=area_effect_cloud,name=ScR_BuildLimit,limit=1] global += BuildHeight options
execute as @e[type=area_effect_cloud,name=ScR_BuildLimit,limit=1] store result entity @s Pos[1] double 1 run scoreboard players get @s global

execute as @e[type=area_effect_cloud,name=ScR_BuildLimit,limit=1] at @s run fill ~-2 ~1 ~-2 ~2 ~2 ~2 air
