
execute at @e[tag=fill,scores={fill=0}] run fill ~-1 ~ ~-1 ~-1 ~ ~1 minecraft:magma_block
execute at @e[tag=fill,scores={fill=0}] run fill ~-1 ~ ~-1 ~1 ~ ~-1 minecraft:magma_block
execute at @e[tag=fill,scores={fill=0}] run fill ~1 ~ ~1 ~-1 ~ ~1 minecraft:magma_block
execute at @e[tag=fill,scores={fill=0}] run fill ~1 ~ ~1 ~1 ~ ~-1 minecraft:magma_block
scoreboard players set @e[tag=fill,scores={fill=0}] fill 1
execute if score WBSize options matches 4.. run schedule function scaffolding_rush:game/lava/global_rising/fill_2 2t
   