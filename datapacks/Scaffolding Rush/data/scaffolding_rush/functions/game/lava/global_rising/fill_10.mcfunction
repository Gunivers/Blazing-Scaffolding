execute at @e[tag=fill,scores={fill=11}] run fill ~-10 ~ ~-10 ~-10 ~ ~10 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=11}] run fill ~-10 ~ ~-10 ~10 ~ ~-10 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=11}] run fill ~10 ~ ~10 ~-10 ~ ~10 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=11}] run fill ~10 ~ ~10 ~10 ~ ~-10 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=11}] fill 10
schedule function scaffolding_rush:game/lava/global_rising/fill_9 2t
