execute at @e[tag=fill,scores={fill=10}] run fill ~-9 ~ ~-9 ~-9 ~ ~9 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=10}] run fill ~-9 ~ ~-9 ~9 ~ ~-9 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=10}] run fill ~9 ~ ~9 ~-9 ~ ~9 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=10}] run fill ~9 ~ ~9 ~9 ~ ~-9 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=10}] fill 9
schedule function scaffolding_rush:game/lava/global_rising/fill_8 2t
