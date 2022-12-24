execute at @e[tag=fill,scores={fill=7}] run fill ~-6 ~ ~-6 ~-6 ~ ~6 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=7}] run fill ~-6 ~ ~-6 ~6 ~ ~-6 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=7}] run fill ~6 ~ ~6 ~-6 ~ ~6 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=7}] run fill ~6 ~ ~6 ~6 ~ ~-6 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=7}] fill 6
schedule function scaffolding_rush:game/lava/global_rising/fill_5 2t
