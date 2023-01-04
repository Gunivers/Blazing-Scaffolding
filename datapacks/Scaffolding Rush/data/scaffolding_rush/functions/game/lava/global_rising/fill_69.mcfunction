
execute at @e[tag=fill,scores={fill=68}] run fill ~-69 ~ ~-69 ~-69 ~ ~69 minecraft:magma_block
execute at @e[tag=fill,scores={fill=68}] run fill ~-69 ~ ~-69 ~69 ~ ~-69 minecraft:magma_block
execute at @e[tag=fill,scores={fill=68}] run fill ~69 ~ ~69 ~-69 ~ ~69 minecraft:magma_block
execute at @e[tag=fill,scores={fill=68}] run fill ~69 ~ ~69 ~69 ~ ~-69 minecraft:magma_block
scoreboard players set @e[tag=fill,scores={fill=68}] fill 69
execute if score WBSize options matches 140.. run schedule function scaffolding_rush:game/lava/global_rising/fill_70 2t
   