
execute at @e[tag=fill,scores={fill=72}] run fill ~-73 ~ ~-73 ~-73 ~ ~73 minecraft:magma_block
execute at @e[tag=fill,scores={fill=72}] run fill ~-73 ~ ~-73 ~73 ~ ~-73 minecraft:magma_block
execute at @e[tag=fill,scores={fill=72}] run fill ~73 ~ ~73 ~-73 ~ ~73 minecraft:magma_block
execute at @e[tag=fill,scores={fill=72}] run fill ~73 ~ ~73 ~73 ~ ~-73 minecraft:magma_block
scoreboard players set @e[tag=fill,scores={fill=72}] fill 73
execute if score WBSize options matches 148.. run schedule function scaffolding_rush:game/lava/global_rising/fill_74 2t
   