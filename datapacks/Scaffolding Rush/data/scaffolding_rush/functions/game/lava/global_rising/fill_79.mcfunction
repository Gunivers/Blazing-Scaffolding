execute at @e[tag=fill,scores={fill=80}] run fill ~-79 ~ ~-79 ~-79 ~ ~79 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=80}] run fill ~-79 ~ ~-79 ~79 ~ ~-79 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=80}] run fill ~79 ~ ~79 ~-79 ~ ~79 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=80}] run fill ~79 ~ ~79 ~79 ~ ~-79 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=80}] fill 79
schedule function scaffolding_rush:game/lava/global_rising/fill_78 2t
