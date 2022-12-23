execute at @e[tag=fill,scores={fill=8}] run fill ~-7 ~ ~-7 ~-7 ~ ~7 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=8}] run fill ~-7 ~ ~-7 ~7 ~ ~-7 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=8}] run fill ~7 ~ ~7 ~-7 ~ ~7 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=8}] run fill ~7 ~ ~7 ~7 ~ ~-7 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=8}] fill 7
schedule function scaffolding_rush:game/lava/global_rising/fill_6 2t
