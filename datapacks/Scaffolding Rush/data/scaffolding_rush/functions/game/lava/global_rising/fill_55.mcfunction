execute at @e[tag=fill,scores={fill=56}] run fill ~-55 ~ ~-55 ~-55 ~ ~55 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=56}] run fill ~-55 ~ ~-55 ~55 ~ ~-55 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=56}] run fill ~55 ~ ~55 ~-55 ~ ~55 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=56}] run fill ~55 ~ ~55 ~55 ~ ~-55 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=56}] fill 55
schedule function scaffolding_rush:game/lava/global_rising/fill_54 2t
