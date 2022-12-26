execute at @e[tag=fill,scores={fill=67}] run fill ~-66 ~ ~-66 ~-66 ~ ~66 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=67}] run fill ~-66 ~ ~-66 ~66 ~ ~-66 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=67}] run fill ~66 ~ ~66 ~-66 ~ ~66 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=67}] run fill ~66 ~ ~66 ~66 ~ ~-66 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=67}] fill 66
schedule function scaffolding_rush:game/lava/global_rising/fill_65 2t
