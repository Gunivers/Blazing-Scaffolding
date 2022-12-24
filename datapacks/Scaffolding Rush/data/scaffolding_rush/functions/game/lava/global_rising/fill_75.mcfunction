execute at @e[tag=fill,scores={fill=76}] run fill ~-75 ~ ~-75 ~-75 ~ ~75 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=76}] run fill ~-75 ~ ~-75 ~75 ~ ~-75 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=76}] run fill ~75 ~ ~75 ~-75 ~ ~75 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=76}] run fill ~75 ~ ~75 ~75 ~ ~-75 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=76}] fill 75
schedule function scaffolding_rush:game/lava/global_rising/fill_74 2t
