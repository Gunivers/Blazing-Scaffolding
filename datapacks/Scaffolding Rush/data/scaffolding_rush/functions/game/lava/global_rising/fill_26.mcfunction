execute at @e[tag=fill,scores={fill=27}] run fill ~-26 ~ ~-26 ~-26 ~ ~26 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=27}] run fill ~-26 ~ ~-26 ~26 ~ ~-26 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=27}] run fill ~26 ~ ~26 ~-26 ~ ~26 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=27}] run fill ~26 ~ ~26 ~26 ~ ~-26 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=27}] fill 26
schedule function scaffolding_rush:game/lava/global_rising/fill_25 2t
