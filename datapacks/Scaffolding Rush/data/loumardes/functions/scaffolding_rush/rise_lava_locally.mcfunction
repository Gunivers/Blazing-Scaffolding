# /!\ must be executed at the ScR_LavaLevel AEC
#/execute at @e[type=area_effect_cloud,tag=ScR_LavaLevel] run function loumardes:scaffolding_rush/rise_lava

#Get LavaLevel
tp @e[type=area_effect_cloud,tag=ScR_LavaLevel,limit=1] @s
execute store result entity @e[type=area_effect_cloud,tag=ScR_LavaLevel,limit=1] Pos[1] double 1 run scoreboard players get LavaLevel constant

#Raise Lava
execute unless score LavaLevel constant matches 1 as @e[type=area_effect_cloud,tag=ScR_LavaLevel,limit=1] at @s run fill ~-7 ~-1 ~-7 ~7 ~-1 ~7 magma_block
execute unless score LavaLevel constant matches ..2 as @e[type=area_effect_cloud,tag=ScR_LavaLevel,limit=1] at @s run fill ~-8 ~-1 ~-8 ~8 ~-1 ~8 magma_block replace air

#Lava Kill
execute store result score @s constant run data get entity @s Pos[1]
execute if score @s constant <= LavaLevel constant unless entity @s[gamemode=spectator] unless score LavaLevel constant matches 1 unless block ~-0.3 ~ ~-0.3 minecraft:scaffolding unless block ~-0.3 ~ ~0.3 minecraft:scaffolding unless block ~0.3 ~ ~-0.3 minecraft:scaffolding unless block ~0.3 ~ ~0.3 minecraft:scaffolding run kill @s[tag=!killed]

#Build Limit
scoreboard players operation @e[type=area_effect_cloud,tag=ScR_LavaLevel,limit=1] constant = LavaLevel constant
scoreboard players operation @e[type=area_effect_cloud,tag=ScR_LavaLevel,limit=1] constant += BuildHeight constant
execute as @e[type=area_effect_cloud,tag=ScR_LavaLevel,limit=1] store result entity @s Pos[1] double 1 run scoreboard players get @s constant

execute as @e[type=area_effect_cloud,tag=ScR_LavaLevel,limit=1] at @s run fill ~-7 ~1 ~-7 ~7 ~5 ~7 air
