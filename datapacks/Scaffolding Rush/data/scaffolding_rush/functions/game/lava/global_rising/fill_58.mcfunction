
execute at @e[tag=fill,scores={fill=57}] run fill ~-58 ~ ~-58 ~-58 ~ ~58 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=57}] run fill ~-58 ~ ~-58 ~58 ~ ~-58 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=57}] run fill ~58 ~ ~58 ~-58 ~ ~58 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=57}] run fill ~58 ~ ~58 ~58 ~ ~-58 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=57}] fill 58
execute if score WBSize options matches 118.. run schedule function scaffolding_rush:game/lava/global_rising/fill_59 2t
   