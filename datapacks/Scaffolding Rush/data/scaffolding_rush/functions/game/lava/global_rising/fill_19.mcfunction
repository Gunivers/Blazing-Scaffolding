execute at @e[tag=fill,scores={fill=20}] run fill ~-19 ~ ~-19 ~-19 ~ ~19 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=20}] run fill ~-19 ~ ~-19 ~19 ~ ~-19 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=20}] run fill ~19 ~ ~19 ~-19 ~ ~19 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=20}] run fill ~19 ~ ~19 ~19 ~ ~-19 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=20}] fill 19
schedule function scaffolding_rush:game/lava/global_rising/fill_18 2t
