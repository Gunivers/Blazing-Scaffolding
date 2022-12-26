execute at @e[tag=fill,scores={fill=12}] run fill ~-11 ~ ~-11 ~-11 ~ ~11 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=12}] run fill ~-11 ~ ~-11 ~11 ~ ~-11 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=12}] run fill ~11 ~ ~11 ~-11 ~ ~11 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=12}] run fill ~11 ~ ~11 ~11 ~ ~-11 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=12}] fill 11
schedule function scaffolding_rush:game/lava/global_rising/fill_10 2t
