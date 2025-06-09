
execute at @e[tag=fill,scores={fill=17}] run fill ~-18 ~ ~-18 ~-18 ~ ~18 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=17}] run fill ~-18 ~ ~-18 ~18 ~ ~-18 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=17}] run fill ~18 ~ ~18 ~-18 ~ ~18 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=17}] run fill ~18 ~ ~18 ~18 ~ ~-18 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=17}] fill 18
execute if score WBSize options matches 38.. run schedule function scaffolding_rush:game/lava/global_rising/fill_19 2t
   