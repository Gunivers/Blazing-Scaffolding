
execute at @e[tag=fill,scores={fill=30}] run fill ~-31 ~ ~-31 ~-31 ~ ~31 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=30}] run fill ~-31 ~ ~-31 ~31 ~ ~-31 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=30}] run fill ~31 ~ ~31 ~-31 ~ ~31 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=30}] run fill ~31 ~ ~31 ~31 ~ ~-31 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=30}] fill 31
execute if score WBSize options matches 64.. run schedule function scaffolding_rush:game/lava/global_rising/fill_32 2t
   