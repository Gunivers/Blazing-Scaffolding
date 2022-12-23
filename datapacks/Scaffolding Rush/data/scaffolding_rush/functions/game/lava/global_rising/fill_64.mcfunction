execute at @e[tag=fill,scores={fill=65}] run fill ~-64 ~ ~-64 ~-64 ~ ~64 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=65}] run fill ~-64 ~ ~-64 ~64 ~ ~-64 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=65}] run fill ~64 ~ ~64 ~-64 ~ ~64 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=65}] run fill ~64 ~ ~64 ~64 ~ ~-64 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=65}] fill 64
schedule function scaffolding_rush:game/lava/global_rising/fill_63 2t
