
execute at @e[tag=fill,scores={fill=81}] run fill ~-82 ~ ~-82 ~-82 ~ ~82 minecraft:magma_block
execute at @e[tag=fill,scores={fill=81}] run fill ~-82 ~ ~-82 ~82 ~ ~-82 minecraft:magma_block
execute at @e[tag=fill,scores={fill=81}] run fill ~82 ~ ~82 ~-82 ~ ~82 minecraft:magma_block
execute at @e[tag=fill,scores={fill=81}] run fill ~82 ~ ~82 ~82 ~ ~-82 minecraft:magma_block
scoreboard players set @e[tag=fill,scores={fill=81}] fill 82
execute if score WBSize options matches 166.. run schedule function scaffolding_rush:game/lava/global_rising/fill_83 2t
   