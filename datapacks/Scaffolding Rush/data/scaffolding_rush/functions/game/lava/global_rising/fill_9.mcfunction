
execute at @e[tag=fill,scores={fill=8}] run fill ~-9 ~ ~-9 ~-9 ~ ~9 minecraft:magma_block
execute at @e[tag=fill,scores={fill=8}] run fill ~-9 ~ ~-9 ~9 ~ ~-9 minecraft:magma_block
execute at @e[tag=fill,scores={fill=8}] run fill ~9 ~ ~9 ~-9 ~ ~9 minecraft:magma_block
execute at @e[tag=fill,scores={fill=8}] run fill ~9 ~ ~9 ~9 ~ ~-9 minecraft:magma_block
scoreboard players set @e[tag=fill,scores={fill=8}] fill 9
execute if score WBSize options matches 20.. run schedule function scaffolding_rush:game/lava/global_rising/fill_10 2t
   