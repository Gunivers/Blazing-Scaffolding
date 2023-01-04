
execute at @e[tag=fill,scores={fill=7}] run fill ~-8 ~ ~-8 ~-8 ~ ~8 minecraft:magma_block
execute at @e[tag=fill,scores={fill=7}] run fill ~-8 ~ ~-8 ~8 ~ ~-8 minecraft:magma_block
execute at @e[tag=fill,scores={fill=7}] run fill ~8 ~ ~8 ~-8 ~ ~8 minecraft:magma_block
execute at @e[tag=fill,scores={fill=7}] run fill ~8 ~ ~8 ~8 ~ ~-8 minecraft:magma_block
scoreboard players set @e[tag=fill,scores={fill=7}] fill 8
execute if score WBSize options matches 18.. run schedule function scaffolding_rush:game/lava/global_rising/fill_9 2t
   