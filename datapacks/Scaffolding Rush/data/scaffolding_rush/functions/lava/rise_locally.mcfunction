
execute store result score @s[scores={killed=0}] YEntity run data get entity @s Pos[1]
execute if block ~ ~-0.0001 ~ magma_block run scoreboard players add @s killed 1

#Get LavaLevel
tp @e[type=marker,name="ScR_LavaLevel",limit=1] @s
execute store result entity @e[type=marker,name="ScR_LavaLevel",limit=1] Pos[1] double 1 run scoreboard players get LavaLevel global

#Raise Lava
execute unless score LavaLevel global matches 1 as @e[type=marker,name="ScR_LavaLevel",limit=1] at @s run fill ~-7 ~-1 ~-7 ~7 ~-1 ~7 magma_block replace #scaffolding_rush:lavareplace
execute unless score LavaLevel global matches ..2 as @e[type=marker,name="ScR_LavaLevel",limit=1] at @s run fill ~-8 ~-2 ~-8 ~8 ~-2 ~8 magma_block replace air
