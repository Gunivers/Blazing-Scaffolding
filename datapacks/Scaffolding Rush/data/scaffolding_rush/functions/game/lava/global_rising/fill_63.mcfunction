execute at @e[tag=fill,scores={fill=64}] run fill ~-63 ~ ~-63 ~-63 ~ ~63 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=64}] run fill ~-63 ~ ~-63 ~63 ~ ~-63 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=64}] run fill ~63 ~ ~63 ~-63 ~ ~63 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=64}] run fill ~63 ~ ~63 ~63 ~ ~-63 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=64}] fill 63
schedule function scaffolding_rush:game/lava/global_rising/fill_62 2t
