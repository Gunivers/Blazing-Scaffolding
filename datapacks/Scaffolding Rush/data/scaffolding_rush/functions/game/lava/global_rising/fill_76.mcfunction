execute at @e[tag=fill,scores={fill=77}] run fill ~-76 ~ ~-76 ~-76 ~ ~76 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=77}] run fill ~-76 ~ ~-76 ~76 ~ ~-76 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=77}] run fill ~76 ~ ~76 ~-76 ~ ~76 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=77}] run fill ~76 ~ ~76 ~76 ~ ~-76 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=77}] fill 76
schedule function scaffolding_rush:game/lava/global_rising/fill_75 2t
