execute at @e[tag=fill,scores={fill=82}] run fill ~-81 ~ ~-81 ~-81 ~ ~81 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=82}] run fill ~-81 ~ ~-81 ~81 ~ ~-81 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=82}] run fill ~81 ~ ~81 ~-81 ~ ~81 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=82}] run fill ~81 ~ ~81 ~81 ~ ~-81 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=82}] fill 81
schedule function scaffolding_rush:game/lava/global_rising/fill_80 2t
