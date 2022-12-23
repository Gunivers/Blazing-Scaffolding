execute at @e[tag=fill,scores={fill=48}] run fill ~-47 ~ ~-47 ~-47 ~ ~47 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=48}] run fill ~-47 ~ ~-47 ~47 ~ ~-47 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=48}] run fill ~47 ~ ~47 ~-47 ~ ~47 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=48}] run fill ~47 ~ ~47 ~47 ~ ~-47 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=48}] fill 47
schedule function scaffolding_rush:game/lava/global_rising/fill_46 2t
