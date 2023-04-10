
execute at @e[tag=fill,scores={fill=73}] run fill ~-74 ~ ~-74 ~-74 ~ ~74 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=73}] run fill ~-74 ~ ~-74 ~74 ~ ~-74 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=73}] run fill ~74 ~ ~74 ~-74 ~ ~74 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=73}] run fill ~74 ~ ~74 ~74 ~ ~-74 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=73}] fill 74
execute if score WBSize options matches 150.. run schedule function scaffolding_rush:game/lava/global_rising/fill_75 2t
   