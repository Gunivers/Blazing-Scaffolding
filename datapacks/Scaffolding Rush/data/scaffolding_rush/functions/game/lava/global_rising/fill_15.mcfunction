execute at @e[tag=fill,scores={fill=16}] run fill ~-15 ~ ~-15 ~-15 ~ ~15 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=16}] run fill ~-15 ~ ~-15 ~15 ~ ~-15 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=16}] run fill ~15 ~ ~15 ~-15 ~ ~15 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=16}] run fill ~15 ~ ~15 ~15 ~ ~-15 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=16}] fill 15
schedule function scaffolding_rush:game/lava/global_rising/fill_14 2t
