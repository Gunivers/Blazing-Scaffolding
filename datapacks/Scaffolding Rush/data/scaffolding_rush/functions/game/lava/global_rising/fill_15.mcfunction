
execute at @e[tag=fill,scores={fill=14}] run fill ~-15 ~ ~-15 ~-15 ~ ~15 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=14}] run fill ~-15 ~ ~-15 ~15 ~ ~-15 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=14}] run fill ~15 ~ ~15 ~-15 ~ ~15 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=14}] run fill ~15 ~ ~15 ~15 ~ ~-15 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=14}] fill 15
execute if score WBSize options matches 32.. run schedule function scaffolding_rush:game/lava/global_rising/fill_16 2t
   