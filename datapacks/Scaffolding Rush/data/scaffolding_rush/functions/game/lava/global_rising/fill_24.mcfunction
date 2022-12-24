execute at @e[tag=fill,scores={fill=25}] run fill ~-24 ~ ~-24 ~-24 ~ ~24 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=25}] run fill ~-24 ~ ~-24 ~24 ~ ~-24 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=25}] run fill ~24 ~ ~24 ~-24 ~ ~24 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=25}] run fill ~24 ~ ~24 ~24 ~ ~-24 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=25}] fill 24
schedule function scaffolding_rush:game/lava/global_rising/fill_23 2t
