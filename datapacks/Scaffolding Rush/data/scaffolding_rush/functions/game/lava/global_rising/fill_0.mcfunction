
execute at @e[tag=fill,scores={fill=-1}] run fill ~-0 ~ ~-0 ~-0 ~ ~0 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=-1}] run fill ~-0 ~ ~-0 ~0 ~ ~-0 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=-1}] run fill ~0 ~ ~0 ~-0 ~ ~0 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=-1}] run fill ~0 ~ ~0 ~0 ~ ~-0 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=-1}] fill 0
execute if score WBSize options matches 2.. run schedule function scaffolding_rush:game/lava/global_rising/fill_1 2t
   