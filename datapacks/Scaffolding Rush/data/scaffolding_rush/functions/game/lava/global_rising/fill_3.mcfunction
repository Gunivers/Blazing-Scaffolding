execute at @e[tag=fill,scores={fill=4}] run fill ~-3 ~ ~-3 ~-3 ~ ~3 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=4}] run fill ~-3 ~ ~-3 ~3 ~ ~-3 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=4}] run fill ~3 ~ ~3 ~-3 ~ ~3 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=4}] run fill ~3 ~ ~3 ~3 ~ ~-3 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=4}] fill 3
schedule function scaffolding_rush:game/lava/global_rising/fill_2 2t
