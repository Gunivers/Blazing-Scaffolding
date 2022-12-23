execute at @e[tag=fill,scores={fill=89}] run fill ~-88 ~ ~-88 ~-88 ~ ~88 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=89}] run fill ~-88 ~ ~-88 ~88 ~ ~-88 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=89}] run fill ~88 ~ ~88 ~-88 ~ ~88 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=89}] run fill ~88 ~ ~88 ~88 ~ ~-88 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=89}] fill 88
schedule function scaffolding_rush:game/lava/global_rising/fill_87 2t
