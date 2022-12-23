execute at @e[tag=fill,scores={fill=32}] run fill ~-31 ~ ~-31 ~-31 ~ ~31 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=32}] run fill ~-31 ~ ~-31 ~31 ~ ~-31 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=32}] run fill ~31 ~ ~31 ~-31 ~ ~31 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=32}] run fill ~31 ~ ~31 ~31 ~ ~-31 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=32}] fill 31
schedule function scaffolding_rush:game/lava/global_rising/fill_30 2t
