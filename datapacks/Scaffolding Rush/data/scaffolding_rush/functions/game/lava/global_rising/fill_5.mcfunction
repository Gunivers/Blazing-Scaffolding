execute at @e[tag=fill,scores={fill=6}] run fill ~-5 ~ ~-5 ~-5 ~ ~5 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=6}] run fill ~-5 ~ ~-5 ~5 ~ ~-5 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=6}] run fill ~5 ~ ~5 ~-5 ~ ~5 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=6}] run fill ~5 ~ ~5 ~5 ~ ~-5 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=6}] fill 5
schedule function scaffolding_rush:game/lava/global_rising/fill_4 2t
