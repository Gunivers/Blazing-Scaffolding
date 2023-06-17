
execute at @e[tag=fill,scores={fill=33}] run fill ~-34 ~ ~-34 ~-34 ~ ~34 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=33}] run fill ~-34 ~ ~-34 ~34 ~ ~-34 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=33}] run fill ~34 ~ ~34 ~-34 ~ ~34 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=33}] run fill ~34 ~ ~34 ~34 ~ ~-34 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=33}] fill 34
execute if score WBSize options matches 70.. run schedule function scaffolding_rush:game/lava/global_rising/fill_35 2t
   