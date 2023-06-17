
execute at @e[tag=fill,scores={fill=66}] run fill ~-67 ~ ~-67 ~-67 ~ ~67 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=66}] run fill ~-67 ~ ~-67 ~67 ~ ~-67 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=66}] run fill ~67 ~ ~67 ~-67 ~ ~67 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=66}] run fill ~67 ~ ~67 ~67 ~ ~-67 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=66}] fill 67
execute if score WBSize options matches 136.. run schedule function scaffolding_rush:game/lava/global_rising/fill_68 2t
   