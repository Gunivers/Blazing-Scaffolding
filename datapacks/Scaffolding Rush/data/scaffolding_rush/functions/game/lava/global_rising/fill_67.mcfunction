execute at @e[tag=fill,scores={fill=68}] run fill ~-67 ~ ~-67 ~-67 ~ ~67 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=68}] run fill ~-67 ~ ~-67 ~67 ~ ~-67 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=68}] run fill ~67 ~ ~67 ~-67 ~ ~67 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=68}] run fill ~67 ~ ~67 ~67 ~ ~-67 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=68}] fill 67
schedule function scaffolding_rush:game/lava/global_rising/fill_66 2t
