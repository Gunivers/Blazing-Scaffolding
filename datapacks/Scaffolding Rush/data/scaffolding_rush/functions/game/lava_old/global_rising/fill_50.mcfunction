
execute at @e[tag=fill,scores={fill=49}] run fill ~-50 ~ ~-50 ~-50 ~ ~50 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=49}] run fill ~-50 ~ ~-50 ~50 ~ ~-50 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=49}] run fill ~50 ~ ~50 ~-50 ~ ~50 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=49}] run fill ~50 ~ ~50 ~50 ~ ~-50 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=49}] fill 50
execute if score WBSize options matches 102.. run schedule function scaffolding_rush:game/lava/global_rising/fill_51 2t
   