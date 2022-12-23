execute at @e[tag=fill,scores={fill=5}] run fill ~-4 ~ ~-4 ~-4 ~ ~4 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=5}] run fill ~-4 ~ ~-4 ~4 ~ ~-4 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=5}] run fill ~4 ~ ~4 ~-4 ~ ~4 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=5}] run fill ~4 ~ ~4 ~4 ~ ~-4 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=5}] fill 4
schedule function scaffolding_rush:game/lava/global_rising/fill_3 2t
