
execute at @e[tag=fill,scores={fill=22}] run fill ~-23 ~ ~-23 ~-23 ~ ~23 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=22}] run fill ~-23 ~ ~-23 ~23 ~ ~-23 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=22}] run fill ~23 ~ ~23 ~-23 ~ ~23 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=22}] run fill ~23 ~ ~23 ~23 ~ ~-23 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=22}] fill 23
execute if score WBSize options matches 48.. run schedule function scaffolding_rush:game/lava/global_rising/fill_24 2t
   