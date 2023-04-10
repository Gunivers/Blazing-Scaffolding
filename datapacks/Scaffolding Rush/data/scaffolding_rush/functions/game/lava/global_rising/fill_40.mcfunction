
execute at @e[tag=fill,scores={fill=39}] run fill ~-40 ~ ~-40 ~-40 ~ ~40 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=39}] run fill ~-40 ~ ~-40 ~40 ~ ~-40 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=39}] run fill ~40 ~ ~40 ~-40 ~ ~40 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=39}] run fill ~40 ~ ~40 ~40 ~ ~-40 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=39}] fill 40
execute if score WBSize options matches 82.. run schedule function scaffolding_rush:game/lava/global_rising/fill_41 2t
   