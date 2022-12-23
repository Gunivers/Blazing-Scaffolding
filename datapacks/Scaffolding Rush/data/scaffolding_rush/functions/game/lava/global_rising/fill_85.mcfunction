execute at @e[tag=fill,scores={fill=86}] run fill ~-85 ~ ~-85 ~-85 ~ ~85 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=86}] run fill ~-85 ~ ~-85 ~85 ~ ~-85 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=86}] run fill ~85 ~ ~85 ~-85 ~ ~85 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=86}] run fill ~85 ~ ~85 ~85 ~ ~-85 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=86}] fill 85
schedule function scaffolding_rush:game/lava/global_rising/fill_84 2t
