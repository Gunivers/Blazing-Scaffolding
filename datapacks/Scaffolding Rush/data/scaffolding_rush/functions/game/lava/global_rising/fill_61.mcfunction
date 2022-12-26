execute at @e[tag=fill,scores={fill=62}] run fill ~-61 ~ ~-61 ~-61 ~ ~61 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=62}] run fill ~-61 ~ ~-61 ~61 ~ ~-61 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=62}] run fill ~61 ~ ~61 ~-61 ~ ~61 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=62}] run fill ~61 ~ ~61 ~61 ~ ~-61 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=62}] fill 61
schedule function scaffolding_rush:game/lava/global_rising/fill_60 2t
