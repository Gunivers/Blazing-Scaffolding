execute at @e[tag=fill,scores={fill=43}] run fill ~-42 ~ ~-42 ~-42 ~ ~42 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=43}] run fill ~-42 ~ ~-42 ~42 ~ ~-42 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=43}] run fill ~42 ~ ~42 ~-42 ~ ~42 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=43}] run fill ~42 ~ ~42 ~42 ~ ~-42 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=43}] fill 42
schedule function scaffolding_rush:game/lava/global_rising/fill_41 2t
