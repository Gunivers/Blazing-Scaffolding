
execute at @e[tag=fill,scores={fill=23}] run fill ~-24 ~ ~-24 ~-24 ~ ~24 minecraft:magma_block
execute at @e[tag=fill,scores={fill=23}] run fill ~-24 ~ ~-24 ~24 ~ ~-24 minecraft:magma_block
execute at @e[tag=fill,scores={fill=23}] run fill ~24 ~ ~24 ~-24 ~ ~24 minecraft:magma_block
execute at @e[tag=fill,scores={fill=23}] run fill ~24 ~ ~24 ~24 ~ ~-24 minecraft:magma_block
scoreboard players set @e[tag=fill,scores={fill=23}] fill 24
execute if score WBSize options matches 50.. run schedule function scaffolding_rush:game/lava/global_rising/fill_25 2t
   