
execute at @e[tag=fill,scores={fill=29}] run fill ~-30 ~ ~-30 ~-30 ~ ~30 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=29}] run fill ~-30 ~ ~-30 ~30 ~ ~-30 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=29}] run fill ~30 ~ ~30 ~-30 ~ ~30 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=29}] run fill ~30 ~ ~30 ~30 ~ ~-30 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=29}] fill 30
execute if score WBSize options matches 62.. run schedule function scaffolding_rush:game/lava/global_rising/fill_31 2t
   