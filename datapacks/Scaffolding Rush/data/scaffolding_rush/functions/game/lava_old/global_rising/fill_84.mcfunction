
execute at @e[tag=fill,scores={fill=83}] run fill ~-84 ~ ~-84 ~-84 ~ ~84 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=83}] run fill ~-84 ~ ~-84 ~84 ~ ~-84 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=83}] run fill ~84 ~ ~84 ~-84 ~ ~84 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=83}] run fill ~84 ~ ~84 ~84 ~ ~-84 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=83}] fill 84
execute if score WBSize options matches 170.. run schedule function scaffolding_rush:game/lava/global_rising/fill_85 2t
   