execute at @e[tag=fill,scores={fill=74}] run fill ~-73 ~ ~-73 ~-73 ~ ~73 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=74}] run fill ~-73 ~ ~-73 ~73 ~ ~-73 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=74}] run fill ~73 ~ ~73 ~-73 ~ ~73 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=74}] run fill ~73 ~ ~73 ~73 ~ ~-73 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=74}] fill 73
schedule function scaffolding_rush:game/lava/global_rising/fill_72 2t
