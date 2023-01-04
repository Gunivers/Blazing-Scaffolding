
execute at @e[tag=fill,scores={fill=18}] run fill ~-19 ~ ~-19 ~-19 ~ ~19 minecraft:magma_block
execute at @e[tag=fill,scores={fill=18}] run fill ~-19 ~ ~-19 ~19 ~ ~-19 minecraft:magma_block
execute at @e[tag=fill,scores={fill=18}] run fill ~19 ~ ~19 ~-19 ~ ~19 minecraft:magma_block
execute at @e[tag=fill,scores={fill=18}] run fill ~19 ~ ~19 ~19 ~ ~-19 minecraft:magma_block
scoreboard players set @e[tag=fill,scores={fill=18}] fill 19
execute if score WBSize options matches 40.. run schedule function scaffolding_rush:game/lava/global_rising/fill_20 2t
   