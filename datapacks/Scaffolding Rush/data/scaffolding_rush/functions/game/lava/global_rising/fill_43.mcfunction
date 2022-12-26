execute at @e[tag=fill,scores={fill=44}] run fill ~-43 ~ ~-43 ~-43 ~ ~43 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=44}] run fill ~-43 ~ ~-43 ~43 ~ ~-43 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=44}] run fill ~43 ~ ~43 ~-43 ~ ~43 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=44}] run fill ~43 ~ ~43 ~43 ~ ~-43 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=44}] fill 43
schedule function scaffolding_rush:game/lava/global_rising/fill_42 2t
