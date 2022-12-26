execute at @e[tag=fill,scores={fill=9}] run fill ~-8 ~ ~-8 ~-8 ~ ~8 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=9}] run fill ~-8 ~ ~-8 ~8 ~ ~-8 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=9}] run fill ~8 ~ ~8 ~-8 ~ ~8 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=9}] run fill ~8 ~ ~8 ~8 ~ ~-8 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=9}] fill 8
schedule function scaffolding_rush:game/lava/global_rising/fill_7 2t
