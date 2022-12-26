execute at @e[tag=fill,scores={fill=72}] run fill ~-71 ~ ~-71 ~-71 ~ ~71 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=72}] run fill ~-71 ~ ~-71 ~71 ~ ~-71 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=72}] run fill ~71 ~ ~71 ~-71 ~ ~71 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=72}] run fill ~71 ~ ~71 ~71 ~ ~-71 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=72}] fill 71
schedule function scaffolding_rush:game/lava/global_rising/fill_70 2t
