
execute at @e[tag=fill,scores={fill=10}] run fill ~-11 ~ ~-11 ~-11 ~ ~11 minecraft:magma_block
execute at @e[tag=fill,scores={fill=10}] run fill ~-11 ~ ~-11 ~11 ~ ~-11 minecraft:magma_block
execute at @e[tag=fill,scores={fill=10}] run fill ~11 ~ ~11 ~-11 ~ ~11 minecraft:magma_block
execute at @e[tag=fill,scores={fill=10}] run fill ~11 ~ ~11 ~11 ~ ~-11 minecraft:magma_block
scoreboard players set @e[tag=fill,scores={fill=10}] fill 11
execute if score WBSize options matches 24.. run schedule function scaffolding_rush:game/lava/global_rising/fill_12 2t
   