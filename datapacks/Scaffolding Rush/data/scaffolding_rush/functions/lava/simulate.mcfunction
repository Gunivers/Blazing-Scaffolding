# /!\ must be executed at the ScR_LavaLevel AEC

#Local lava
execute if score PerformanceMode options matches 1 run function scaffolding_rush:lava/rise_locally

#Lava Kill
execute store result score @s[scores={killed=0}] YEntity run data get entity @s Pos[1]
execute if block ~ ~-0.0001 ~ magma_block run scoreboard players add @s killed 1

#Build Limit
