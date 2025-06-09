
execute at @e[tag=fill,scores={fill=21}] run fill ~-22 ~ ~-22 ~-22 ~ ~22 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=21}] run fill ~-22 ~ ~-22 ~22 ~ ~-22 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=21}] run fill ~22 ~ ~22 ~-22 ~ ~22 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=21}] run fill ~22 ~ ~22 ~22 ~ ~-22 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=21}] fill 22
execute if score WBSize options matches 46.. run schedule function scaffolding_rush:game/lava/global_rising/fill_23 2t
   