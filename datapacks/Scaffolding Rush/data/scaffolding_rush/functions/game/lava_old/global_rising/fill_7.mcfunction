
execute at @e[tag=fill,scores={fill=6}] run fill ~-7 ~ ~-7 ~-7 ~ ~7 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=6}] run fill ~-7 ~ ~-7 ~7 ~ ~-7 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=6}] run fill ~7 ~ ~7 ~-7 ~ ~7 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=6}] run fill ~7 ~ ~7 ~7 ~ ~-7 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=6}] fill 7
execute if score WBSize options matches 16.. run schedule function scaffolding_rush:game/lava/global_rising/fill_8 2t
   