execute at @e[tag=fill,scores={fill=49}] run fill ~-48 ~ ~-48 ~-48 ~ ~48 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=49}] run fill ~-48 ~ ~-48 ~48 ~ ~-48 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=49}] run fill ~48 ~ ~48 ~-48 ~ ~48 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=49}] run fill ~48 ~ ~48 ~48 ~ ~-48 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=49}] fill 48
schedule function scaffolding_rush:game/lava/global_rising/fill_47 2t
