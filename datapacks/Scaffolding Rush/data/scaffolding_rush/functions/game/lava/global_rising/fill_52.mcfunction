execute at @e[tag=fill,scores={fill=53}] run fill ~-52 ~ ~-52 ~-52 ~ ~52 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=53}] run fill ~-52 ~ ~-52 ~52 ~ ~-52 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=53}] run fill ~52 ~ ~52 ~-52 ~ ~52 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=53}] run fill ~52 ~ ~52 ~52 ~ ~-52 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=53}] fill 52
schedule function scaffolding_rush:game/lava/global_rising/fill_51 2t
