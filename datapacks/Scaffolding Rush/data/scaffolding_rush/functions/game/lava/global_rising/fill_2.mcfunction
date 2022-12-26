
execute at @e[tag=fill,scores={fill=1}] run fill ~-2 ~ ~-2 ~-2 ~ ~2 minecraft:magma_block
execute at @e[tag=fill,scores={fill=1}] run fill ~-2 ~ ~-2 ~2 ~ ~-2 minecraft:magma_block
execute at @e[tag=fill,scores={fill=1}] run fill ~2 ~ ~2 ~-2 ~ ~2 minecraft:magma_block
execute at @e[tag=fill,scores={fill=1}] run fill ~2 ~ ~2 ~2 ~ ~-2 minecraft:magma_block
scoreboard players set @e[tag=fill,scores={fill=1}] fill 2
execute if score WBSize options matches 6.. run schedule function scaffolding_rush:game/lava/global_rising/fill_3 2t
   