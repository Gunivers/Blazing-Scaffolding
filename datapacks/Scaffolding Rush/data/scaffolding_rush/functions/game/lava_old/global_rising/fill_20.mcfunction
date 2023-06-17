
execute at @e[tag=fill,scores={fill=19}] run fill ~-20 ~ ~-20 ~-20 ~ ~20 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=19}] run fill ~-20 ~ ~-20 ~20 ~ ~-20 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=19}] run fill ~20 ~ ~20 ~-20 ~ ~20 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=19}] run fill ~20 ~ ~20 ~20 ~ ~-20 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=19}] fill 20
execute if score WBSize options matches 42.. run schedule function scaffolding_rush:game/lava/global_rising/fill_21 2t
   