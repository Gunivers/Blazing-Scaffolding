execute at @e[tag=fill,scores={fill=83}] run fill ~-82 ~ ~-82 ~-82 ~ ~82 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=83}] run fill ~-82 ~ ~-82 ~82 ~ ~-82 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=83}] run fill ~82 ~ ~82 ~-82 ~ ~82 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=83}] run fill ~82 ~ ~82 ~82 ~ ~-82 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=83}] fill 82
schedule function scaffolding_rush:game/lava/global_rising/fill_81 2t
