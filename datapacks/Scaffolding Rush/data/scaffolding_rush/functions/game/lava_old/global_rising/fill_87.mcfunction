
execute at @e[tag=fill,scores={fill=86}] run fill ~-87 ~ ~-87 ~-87 ~ ~87 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=86}] run fill ~-87 ~ ~-87 ~87 ~ ~-87 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=86}] run fill ~87 ~ ~87 ~-87 ~ ~87 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=86}] run fill ~87 ~ ~87 ~87 ~ ~-87 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=86}] fill 87
execute if score WBSize options matches 176.. run schedule function scaffolding_rush:game/lava/global_rising/fill_88 2t
   