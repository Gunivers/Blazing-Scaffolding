
execute at @e[tag=fill,scores={fill=11}] run fill ~-12 ~ ~-12 ~-12 ~ ~12 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=11}] run fill ~-12 ~ ~-12 ~12 ~ ~-12 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=11}] run fill ~12 ~ ~12 ~-12 ~ ~12 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=11}] run fill ~12 ~ ~12 ~12 ~ ~-12 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=11}] fill 12
execute if score WBSize options matches 26.. run schedule function scaffolding_rush:game/lava/global_rising/fill_13 2t
   