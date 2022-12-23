execute at @e[tag=fill,scores={fill=51}] run fill ~-50 ~ ~-50 ~-50 ~ ~50 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=51}] run fill ~-50 ~ ~-50 ~50 ~ ~-50 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=51}] run fill ~50 ~ ~50 ~-50 ~ ~50 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=51}] run fill ~50 ~ ~50 ~50 ~ ~-50 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=51}] fill 50
schedule function scaffolding_rush:game/lava/global_rising/fill_49 2t
