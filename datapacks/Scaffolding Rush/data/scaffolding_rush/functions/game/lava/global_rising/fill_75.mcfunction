
execute at @e[tag=fill,scores={fill=74}] run fill ~-75 ~ ~-75 ~-75 ~ ~75 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=74}] run fill ~-75 ~ ~-75 ~75 ~ ~-75 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=74}] run fill ~75 ~ ~75 ~-75 ~ ~75 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=74}] run fill ~75 ~ ~75 ~75 ~ ~-75 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=74}] fill 75
execute if score WBSize options matches 152.. run schedule function scaffolding_rush:game/lava/global_rising/fill_76 2t
   