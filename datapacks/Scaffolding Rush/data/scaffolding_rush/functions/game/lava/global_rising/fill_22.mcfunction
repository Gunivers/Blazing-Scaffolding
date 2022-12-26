execute at @e[tag=fill,scores={fill=23}] run fill ~-22 ~ ~-22 ~-22 ~ ~22 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=23}] run fill ~-22 ~ ~-22 ~22 ~ ~-22 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=23}] run fill ~22 ~ ~22 ~-22 ~ ~22 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=23}] run fill ~22 ~ ~22 ~22 ~ ~-22 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=23}] fill 22
schedule function scaffolding_rush:game/lava/global_rising/fill_21 2t
