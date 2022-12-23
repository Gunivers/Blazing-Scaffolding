execute at @e[tag=fill,scores={fill=24}] run fill ~-23 ~ ~-23 ~-23 ~ ~23 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=24}] run fill ~-23 ~ ~-23 ~23 ~ ~-23 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=24}] run fill ~23 ~ ~23 ~-23 ~ ~23 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=24}] run fill ~23 ~ ~23 ~23 ~ ~-23 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=24}] fill 23
schedule function scaffolding_rush:game/lava/global_rising/fill_22 2t
