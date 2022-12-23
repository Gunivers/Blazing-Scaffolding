execute at @e[tag=fill,scores={fill=35}] run fill ~-34 ~ ~-34 ~-34 ~ ~34 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=35}] run fill ~-34 ~ ~-34 ~34 ~ ~-34 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=35}] run fill ~34 ~ ~34 ~-34 ~ ~34 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=35}] run fill ~34 ~ ~34 ~34 ~ ~-34 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=35}] fill 34
schedule function scaffolding_rush:game/lava/global_rising/fill_33 2t
