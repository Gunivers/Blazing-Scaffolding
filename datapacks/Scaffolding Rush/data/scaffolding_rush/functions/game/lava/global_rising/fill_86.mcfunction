execute at @e[tag=fill,scores={fill=87}] run fill ~-86 ~ ~-86 ~-86 ~ ~86 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=87}] run fill ~-86 ~ ~-86 ~86 ~ ~-86 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=87}] run fill ~86 ~ ~86 ~-86 ~ ~86 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=87}] run fill ~86 ~ ~86 ~86 ~ ~-86 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=87}] fill 86
schedule function scaffolding_rush:game/lava/global_rising/fill_85 2t
