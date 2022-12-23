execute at @e[tag=fill,scores={fill=57}] run fill ~-56 ~ ~-56 ~-56 ~ ~56 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=57}] run fill ~-56 ~ ~-56 ~56 ~ ~-56 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=57}] run fill ~56 ~ ~56 ~-56 ~ ~56 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=57}] run fill ~56 ~ ~56 ~56 ~ ~-56 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=57}] fill 56
schedule function scaffolding_rush:game/lava/global_rising/fill_55 2t
