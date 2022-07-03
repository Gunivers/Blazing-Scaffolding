execute at @e[tag=fill,scores={fill=45}] run fill ~-44 ~ ~-44 ~-44 ~ ~44 magma_block
execute at @e[tag=fill,scores={fill=45}] run fill ~-44 ~ ~-44 ~44 ~ ~-44 magma_block
execute at @e[tag=fill,scores={fill=45}] run fill ~44 ~ ~44 ~-44 ~ ~44 magma_block
execute at @e[tag=fill,scores={fill=45}] run fill ~44 ~ ~44 ~44 ~ ~-44 magma_block
scoreboard players set @e[tag=fill,scores={fill=45}] fill 44
schedule function scaffolding_rush:game/lava/global_rising/fill_43 2t
