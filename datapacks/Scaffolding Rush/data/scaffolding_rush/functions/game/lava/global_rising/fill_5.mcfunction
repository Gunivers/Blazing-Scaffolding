
execute at @e[tag=fill,scores={fill=4}] run fill ~-5 ~ ~-5 ~-5 ~ ~5 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=4}] run fill ~-5 ~ ~-5 ~5 ~ ~-5 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=4}] run fill ~5 ~ ~5 ~-5 ~ ~5 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=4}] run fill ~5 ~ ~5 ~5 ~ ~-5 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=4}] fill 5
execute if score WBSize options matches 12.. run schedule function scaffolding_rush:game/lava/global_rising/fill_6 2t
   