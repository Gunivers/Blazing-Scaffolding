
execute at @e[tag=fill,scores={fill=5}] run fill ~-6 ~ ~-6 ~-6 ~ ~6 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=5}] run fill ~-6 ~ ~-6 ~6 ~ ~-6 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=5}] run fill ~6 ~ ~6 ~-6 ~ ~6 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=5}] run fill ~6 ~ ~6 ~6 ~ ~-6 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=5}] fill 6
execute if score WBSize options matches 14.. run schedule function scaffolding_rush:game/lava/global_rising/fill_7 2t
   