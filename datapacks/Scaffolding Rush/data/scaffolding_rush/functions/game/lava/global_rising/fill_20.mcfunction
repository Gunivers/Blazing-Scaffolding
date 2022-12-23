execute at @e[tag=fill,scores={fill=21}] run fill ~-20 ~ ~-20 ~-20 ~ ~20 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=21}] run fill ~-20 ~ ~-20 ~20 ~ ~-20 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=21}] run fill ~20 ~ ~20 ~-20 ~ ~20 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=21}] run fill ~20 ~ ~20 ~20 ~ ~-20 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=21}] fill 20
schedule function scaffolding_rush:game/lava/global_rising/fill_19 2t
