execute at @e[tag=fill,scores={fill=45}] run fill ~-44 ~ ~-44 ~-44 ~ ~44 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=45}] run fill ~-44 ~ ~-44 ~44 ~ ~-44 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=45}] run fill ~44 ~ ~44 ~-44 ~ ~44 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=45}] run fill ~44 ~ ~44 ~44 ~ ~-44 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=45}] fill 44
schedule function scaffolding_rush:game/lava/global_rising/fill_43 2t
