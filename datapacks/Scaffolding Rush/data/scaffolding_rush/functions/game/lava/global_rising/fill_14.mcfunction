execute at @e[tag=fill,scores={fill=15}] run fill ~-14 ~ ~-14 ~-14 ~ ~14 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=15}] run fill ~-14 ~ ~-14 ~14 ~ ~-14 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=15}] run fill ~14 ~ ~14 ~-14 ~ ~14 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=15}] run fill ~14 ~ ~14 ~14 ~ ~-14 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=15}] fill 14
schedule function scaffolding_rush:game/lava/global_rising/fill_13 2t
