

#Get LavaLevel
tp @e[type=marker,name="lava.level",limit=1] @s
execute store result entity @e[type=marker,name="lava.level",limit=1] Pos[1] double 1 run scoreboard players get #lava.level data

#Raise Lava
execute unless score #lava.level data matches 1 as @e[type=marker,name="lava.level",limit=1] at @s run fill ~-7 ~-1 ~-7 ~7 ~-1 ~7 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute unless score #lava.level data matches ..2 as @e[type=marker,name="lava.level",limit=1] at @s run fill ~-8 ~-2 ~-8 ~8 ~-2 ~8 minecraft:magma_block replace #scaffolding_rush:lava_replace
