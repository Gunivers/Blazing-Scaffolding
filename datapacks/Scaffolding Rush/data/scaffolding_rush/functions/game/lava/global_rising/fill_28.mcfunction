execute at @e[tag=fill,scores={fill=29}] run fill ~-28 ~ ~-28 ~-28 ~ ~28 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=29}] run fill ~-28 ~ ~-28 ~28 ~ ~-28 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=29}] run fill ~28 ~ ~28 ~-28 ~ ~28 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=29}] run fill ~28 ~ ~28 ~28 ~ ~-28 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=29}] fill 28
schedule function scaffolding_rush:game/lava/global_rising/fill_27 2t
