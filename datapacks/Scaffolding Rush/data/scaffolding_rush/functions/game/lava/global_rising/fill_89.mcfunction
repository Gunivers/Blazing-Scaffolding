execute at @e[tag=fill,scores={fill=90}] run fill ~-89 ~ ~-89 ~-89 ~ ~89 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=90}] run fill ~-89 ~ ~-89 ~89 ~ ~-89 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=90}] run fill ~89 ~ ~89 ~-89 ~ ~89 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=90}] run fill ~89 ~ ~89 ~89 ~ ~-89 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=90}] fill 89
schedule function scaffolding_rush:game/lava/global_rising/fill_88 2t
