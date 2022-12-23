execute at @e[tag=fill,scores={fill=26}] run fill ~-25 ~ ~-25 ~-25 ~ ~25 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=26}] run fill ~-25 ~ ~-25 ~25 ~ ~-25 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=26}] run fill ~25 ~ ~25 ~-25 ~ ~25 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=26}] run fill ~25 ~ ~25 ~25 ~ ~-25 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=26}] fill 25
schedule function scaffolding_rush:game/lava/global_rising/fill_24 2t
