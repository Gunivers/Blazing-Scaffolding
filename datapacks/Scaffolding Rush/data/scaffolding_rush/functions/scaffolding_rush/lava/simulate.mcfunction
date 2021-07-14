# /!\ must be executed at the ScR_LavaLevel AEC

#Local lava
execute if score PerformanceMode options matches 1 run function scaffolding_rush:scaffolding_rush/lava/rise_locally

#Lava Kill
execute store result score @s[scores={killed=0}] YEntity run data get entity @s Pos[1]
execute if score @s[scores={killed=0}] YEntity <= LavaLevel global unless entity @s[gamemode=spectator] unless score LavaLevel global matches 1 unless block ~-0.3 ~ ~-0.3 minecraft:scaffolding unless block ~-0.3 ~ ~0.3 minecraft:scaffolding unless block ~0.3 ~ ~-0.3 minecraft:scaffolding unless block ~0.3 ~ ~0.3 minecraft:scaffolding run scoreboard players add @s killed 1

#Build Limit
