execute at @e[tag=fill,scores={fill=60}] run fill ~-59 ~ ~-59 ~-59 ~ ~59 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=60}] run fill ~-59 ~ ~-59 ~59 ~ ~-59 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=60}] run fill ~59 ~ ~59 ~-59 ~ ~59 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=60}] run fill ~59 ~ ~59 ~59 ~ ~-59 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=60}] fill 59
schedule function scaffolding_rush:game/lava/global_rising/fill_58 2t
