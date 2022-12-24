execute at @e[tag=fill,scores={fill=88}] run fill ~-87 ~ ~-87 ~-87 ~ ~87 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=88}] run fill ~-87 ~ ~-87 ~87 ~ ~-87 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=88}] run fill ~87 ~ ~87 ~-87 ~ ~87 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=88}] run fill ~87 ~ ~87 ~87 ~ ~-87 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=88}] fill 87
schedule function scaffolding_rush:game/lava/global_rising/fill_86 2t
