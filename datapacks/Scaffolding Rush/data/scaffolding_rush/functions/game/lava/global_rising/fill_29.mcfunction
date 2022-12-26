execute at @e[tag=fill,scores={fill=30}] run fill ~-29 ~ ~-29 ~-29 ~ ~29 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=30}] run fill ~-29 ~ ~-29 ~29 ~ ~-29 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=30}] run fill ~29 ~ ~29 ~-29 ~ ~29 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=30}] run fill ~29 ~ ~29 ~29 ~ ~-29 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=30}] fill 29
schedule function scaffolding_rush:game/lava/global_rising/fill_28 2t
