execute at @e[tag=fill,scores={fill=13}] run fill ~-12 ~ ~-12 ~-12 ~ ~12 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=13}] run fill ~-12 ~ ~-12 ~12 ~ ~-12 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=13}] run fill ~12 ~ ~12 ~-12 ~ ~12 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=13}] run fill ~12 ~ ~12 ~12 ~ ~-12 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=13}] fill 12
schedule function scaffolding_rush:game/lava/global_rising/fill_11 2t
