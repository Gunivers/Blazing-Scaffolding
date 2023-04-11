
execute at @e[tag=fill,scores={fill=77}] run fill ~-78 ~ ~-78 ~-78 ~ ~78 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=77}] run fill ~-78 ~ ~-78 ~78 ~ ~-78 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=77}] run fill ~78 ~ ~78 ~-78 ~ ~78 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=77}] run fill ~78 ~ ~78 ~78 ~ ~-78 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=77}] fill 78
execute if score WBSize options matches 158.. run schedule function scaffolding_rush:game/lava/global_rising/fill_79 2t
   