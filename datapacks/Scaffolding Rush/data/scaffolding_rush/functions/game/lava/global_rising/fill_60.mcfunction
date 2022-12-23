execute at @e[tag=fill,scores={fill=61}] run fill ~-60 ~ ~-60 ~-60 ~ ~60 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=61}] run fill ~-60 ~ ~-60 ~60 ~ ~-60 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=61}] run fill ~60 ~ ~60 ~-60 ~ ~60 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=61}] run fill ~60 ~ ~60 ~60 ~ ~-60 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=61}] fill 60
schedule function scaffolding_rush:game/lava/global_rising/fill_59 2t
