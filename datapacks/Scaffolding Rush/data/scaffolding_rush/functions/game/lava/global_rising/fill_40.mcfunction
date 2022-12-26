execute at @e[tag=fill,scores={fill=41}] run fill ~-40 ~ ~-40 ~-40 ~ ~40 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=41}] run fill ~-40 ~ ~-40 ~40 ~ ~-40 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=41}] run fill ~40 ~ ~40 ~-40 ~ ~40 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=41}] run fill ~40 ~ ~40 ~40 ~ ~-40 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=41}] fill 40
schedule function scaffolding_rush:game/lava/global_rising/fill_39 2t
