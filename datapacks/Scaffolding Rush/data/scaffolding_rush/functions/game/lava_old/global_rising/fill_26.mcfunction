
execute at @e[tag=fill,scores={fill=25}] run fill ~-26 ~ ~-26 ~-26 ~ ~26 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=25}] run fill ~-26 ~ ~-26 ~26 ~ ~-26 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=25}] run fill ~26 ~ ~26 ~-26 ~ ~26 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=25}] run fill ~26 ~ ~26 ~26 ~ ~-26 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=25}] fill 26
execute if score WBSize options matches 54.. run schedule function scaffolding_rush:game/lava/global_rising/fill_27 2t
   