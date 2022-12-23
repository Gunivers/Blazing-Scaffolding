execute at @e[tag=fill,scores={fill=70}] run fill ~-69 ~ ~-69 ~-69 ~ ~69 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=70}] run fill ~-69 ~ ~-69 ~69 ~ ~-69 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=70}] run fill ~69 ~ ~69 ~-69 ~ ~69 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=70}] run fill ~69 ~ ~69 ~69 ~ ~-69 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=70}] fill 69
schedule function scaffolding_rush:game/lava/global_rising/fill_68 2t
