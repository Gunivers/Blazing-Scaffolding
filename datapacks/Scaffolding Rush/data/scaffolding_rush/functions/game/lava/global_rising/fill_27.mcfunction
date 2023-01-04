
execute at @e[tag=fill,scores={fill=26}] run fill ~-27 ~ ~-27 ~-27 ~ ~27 minecraft:magma_block
execute at @e[tag=fill,scores={fill=26}] run fill ~-27 ~ ~-27 ~27 ~ ~-27 minecraft:magma_block
execute at @e[tag=fill,scores={fill=26}] run fill ~27 ~ ~27 ~-27 ~ ~27 minecraft:magma_block
execute at @e[tag=fill,scores={fill=26}] run fill ~27 ~ ~27 ~27 ~ ~-27 minecraft:magma_block
scoreboard players set @e[tag=fill,scores={fill=26}] fill 27
execute if score WBSize options matches 56.. run schedule function scaffolding_rush:game/lava/global_rising/fill_28 2t
   