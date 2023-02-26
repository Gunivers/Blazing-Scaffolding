
execute at @e[tag=fill,scores={fill=27}] run fill ~-28 ~ ~-28 ~-28 ~ ~28 minecraft:magma_block
execute at @e[tag=fill,scores={fill=27}] run fill ~-28 ~ ~-28 ~28 ~ ~-28 minecraft:magma_block
execute at @e[tag=fill,scores={fill=27}] run fill ~28 ~ ~28 ~-28 ~ ~28 minecraft:magma_block
execute at @e[tag=fill,scores={fill=27}] run fill ~28 ~ ~28 ~28 ~ ~-28 minecraft:magma_block
scoreboard players set @e[tag=fill,scores={fill=27}] fill 28
execute if score WBSize options matches 58.. run schedule function scaffolding_rush:game/lava/global_rising/fill_29 2t
   