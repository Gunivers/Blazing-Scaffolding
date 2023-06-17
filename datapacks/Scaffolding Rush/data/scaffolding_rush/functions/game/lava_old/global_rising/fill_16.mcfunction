
execute at @e[tag=fill,scores={fill=15}] run fill ~-16 ~ ~-16 ~-16 ~ ~16 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=15}] run fill ~-16 ~ ~-16 ~16 ~ ~-16 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=15}] run fill ~16 ~ ~16 ~-16 ~ ~16 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=15}] run fill ~16 ~ ~16 ~16 ~ ~-16 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=15}] fill 16
execute if score WBSize options matches 34.. run schedule function scaffolding_rush:game/lava/global_rising/fill_17 2t
   