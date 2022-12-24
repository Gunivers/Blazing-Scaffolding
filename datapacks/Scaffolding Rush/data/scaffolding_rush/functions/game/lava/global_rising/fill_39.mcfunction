execute at @e[tag=fill,scores={fill=40}] run fill ~-39 ~ ~-39 ~-39 ~ ~39 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=40}] run fill ~-39 ~ ~-39 ~39 ~ ~-39 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=40}] run fill ~39 ~ ~39 ~-39 ~ ~39 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=40}] run fill ~39 ~ ~39 ~39 ~ ~-39 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=40}] fill 39
schedule function scaffolding_rush:game/lava/global_rising/fill_38 2t
