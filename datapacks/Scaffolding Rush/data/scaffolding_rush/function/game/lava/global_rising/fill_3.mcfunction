
execute at @e[tag=fill,scores={fill=2}] run fill ~-3 ~ ~-3 ~-3 ~ ~3 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=2}] run fill ~-3 ~ ~-3 ~3 ~ ~-3 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=2}] run fill ~3 ~ ~3 ~-3 ~ ~3 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=2}] run fill ~3 ~ ~3 ~3 ~ ~-3 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=2}] fill 3
execute if score WBSize options matches 8.. run schedule function scaffolding_rush:game/lava/global_rising/fill_4 2t
   