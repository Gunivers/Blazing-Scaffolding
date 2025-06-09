
execute at @e[tag=fill,scores={fill=3}] run fill ~-4 ~ ~-4 ~-4 ~ ~4 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=3}] run fill ~-4 ~ ~-4 ~4 ~ ~-4 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=3}] run fill ~4 ~ ~4 ~-4 ~ ~4 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=3}] run fill ~4 ~ ~4 ~4 ~ ~-4 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=3}] fill 4
execute if score WBSize options matches 10.. run schedule function scaffolding_rush:game/lava/global_rising/fill_5 2t
   