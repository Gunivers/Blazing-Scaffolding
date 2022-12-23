execute at @e[tag=fill,scores={fill=3}] run fill ~-2 ~ ~-2 ~-2 ~ ~2 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=3}] run fill ~-2 ~ ~-2 ~2 ~ ~-2 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=3}] run fill ~2 ~ ~2 ~-2 ~ ~2 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=3}] run fill ~2 ~ ~2 ~2 ~ ~-2 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=3}] fill 2
schedule function scaffolding_rush:game/lava/global_rising/fill_1 2t
