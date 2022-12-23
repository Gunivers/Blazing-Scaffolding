execute at @e[tag=fill,scores={fill=73}] run fill ~-72 ~ ~-72 ~-72 ~ ~72 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=73}] run fill ~-72 ~ ~-72 ~72 ~ ~-72 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=73}] run fill ~72 ~ ~72 ~-72 ~ ~72 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=73}] run fill ~72 ~ ~72 ~72 ~ ~-72 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=73}] fill 72
schedule function scaffolding_rush:game/lava/global_rising/fill_71 2t
