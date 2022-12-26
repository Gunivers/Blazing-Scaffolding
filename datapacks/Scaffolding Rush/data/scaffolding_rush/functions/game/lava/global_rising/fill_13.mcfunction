execute at @e[tag=fill,scores={fill=14}] run fill ~-13 ~ ~-13 ~-13 ~ ~13 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=14}] run fill ~-13 ~ ~-13 ~13 ~ ~-13 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=14}] run fill ~13 ~ ~13 ~-13 ~ ~13 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=14}] run fill ~13 ~ ~13 ~13 ~ ~-13 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=14}] fill 13
schedule function scaffolding_rush:game/lava/global_rising/fill_12 2t
