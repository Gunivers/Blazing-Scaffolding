execute at @e[tag=fill,scores={fill=75}] run fill ~-74 ~ ~-74 ~-74 ~ ~74 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=75}] run fill ~-74 ~ ~-74 ~74 ~ ~-74 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=75}] run fill ~74 ~ ~74 ~-74 ~ ~74 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=75}] run fill ~74 ~ ~74 ~74 ~ ~-74 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=75}] fill 74
schedule function scaffolding_rush:game/lava/global_rising/fill_73 2t
