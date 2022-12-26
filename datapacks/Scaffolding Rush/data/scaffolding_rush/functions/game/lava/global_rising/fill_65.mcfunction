execute at @e[tag=fill,scores={fill=66}] run fill ~-65 ~ ~-65 ~-65 ~ ~65 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=66}] run fill ~-65 ~ ~-65 ~65 ~ ~-65 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=66}] run fill ~65 ~ ~65 ~-65 ~ ~65 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=66}] run fill ~65 ~ ~65 ~65 ~ ~-65 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=66}] fill 65
schedule function scaffolding_rush:game/lava/global_rising/fill_64 2t
