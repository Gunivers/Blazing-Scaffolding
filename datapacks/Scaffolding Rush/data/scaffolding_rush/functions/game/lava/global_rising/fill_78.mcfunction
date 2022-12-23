execute at @e[tag=fill,scores={fill=79}] run fill ~-78 ~ ~-78 ~-78 ~ ~78 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=79}] run fill ~-78 ~ ~-78 ~78 ~ ~-78 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=79}] run fill ~78 ~ ~78 ~-78 ~ ~78 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=79}] run fill ~78 ~ ~78 ~78 ~ ~-78 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=79}] fill 78
schedule function scaffolding_rush:game/lava/global_rising/fill_77 2t
