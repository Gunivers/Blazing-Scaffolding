execute at @e[tag=fill,scores={fill=52}] run fill ~-51 ~ ~-51 ~-51 ~ ~51 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=52}] run fill ~-51 ~ ~-51 ~51 ~ ~-51 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=52}] run fill ~51 ~ ~51 ~-51 ~ ~51 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=52}] run fill ~51 ~ ~51 ~51 ~ ~-51 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=52}] fill 51
schedule function scaffolding_rush:game/lava/global_rising/fill_50 2t
