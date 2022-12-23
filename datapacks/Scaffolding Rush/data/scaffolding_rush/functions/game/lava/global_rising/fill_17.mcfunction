execute at @e[tag=fill,scores={fill=18}] run fill ~-17 ~ ~-17 ~-17 ~ ~17 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=18}] run fill ~-17 ~ ~-17 ~17 ~ ~-17 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=18}] run fill ~17 ~ ~17 ~-17 ~ ~17 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=18}] run fill ~17 ~ ~17 ~17 ~ ~-17 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=18}] fill 17
schedule function scaffolding_rush:game/lava/global_rising/fill_16 2t
