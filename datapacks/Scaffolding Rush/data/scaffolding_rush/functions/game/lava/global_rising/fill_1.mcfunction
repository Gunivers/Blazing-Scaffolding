execute at @e[tag=fill,scores={fill=2}] run fill ~-1 ~ ~-1 ~-1 ~ ~1 minecraft:magma_block
execute at @e[tag=fill,scores={fill=2}] run fill ~-1 ~ ~-1 ~1 ~ ~-1 minecraft:magma_block
execute at @e[tag=fill,scores={fill=2}] run fill ~1 ~ ~1 ~-1 ~ ~1 minecraft:magma_block
execute at @e[tag=fill,scores={fill=2}] run fill ~1 ~ ~1 ~1 ~ ~-1 minecraft:magma_block
scoreboard players set @e[tag=fill,scores={fill=2}] fill 1
schedule function scaffolding_rush:game/lava/global_rising/fill_0 2t
