execute at @e[tag=fill,scores={fill=85}] run fill ~-84 ~ ~-84 ~-84 ~ ~84 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=85}] run fill ~-84 ~ ~-84 ~84 ~ ~-84 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=85}] run fill ~84 ~ ~84 ~-84 ~ ~84 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=85}] run fill ~84 ~ ~84 ~84 ~ ~-84 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=85}] fill 84
schedule function scaffolding_rush:game/lava/global_rising/fill_83 2t
