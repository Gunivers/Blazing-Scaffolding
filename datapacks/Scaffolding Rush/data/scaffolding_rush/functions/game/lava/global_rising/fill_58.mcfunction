execute at @e[tag=fill,scores={fill=59}] run fill ~-58 ~ ~-58 ~-58 ~ ~58 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=59}] run fill ~-58 ~ ~-58 ~58 ~ ~-58 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=59}] run fill ~58 ~ ~58 ~-58 ~ ~58 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=59}] run fill ~58 ~ ~58 ~58 ~ ~-58 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=59}] fill 58
schedule function scaffolding_rush:game/lava/global_rising/fill_57 2t
