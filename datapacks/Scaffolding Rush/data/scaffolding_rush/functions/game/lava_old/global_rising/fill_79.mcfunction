
execute at @e[tag=fill,scores={fill=78}] run fill ~-79 ~ ~-79 ~-79 ~ ~79 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=78}] run fill ~-79 ~ ~-79 ~79 ~ ~-79 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=78}] run fill ~79 ~ ~79 ~-79 ~ ~79 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=78}] run fill ~79 ~ ~79 ~79 ~ ~-79 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=78}] fill 79
execute if score WBSize options matches 160.. run schedule function scaffolding_rush:game/lava/global_rising/fill_80 2t
   