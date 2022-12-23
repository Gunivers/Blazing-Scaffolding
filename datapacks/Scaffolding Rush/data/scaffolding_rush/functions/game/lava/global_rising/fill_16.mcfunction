execute at @e[tag=fill,scores={fill=17}] run fill ~-16 ~ ~-16 ~-16 ~ ~16 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=17}] run fill ~-16 ~ ~-16 ~16 ~ ~-16 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=17}] run fill ~16 ~ ~16 ~-16 ~ ~16 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=17}] run fill ~16 ~ ~16 ~16 ~ ~-16 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=17}] fill 16
schedule function scaffolding_rush:game/lava/global_rising/fill_15 2t
