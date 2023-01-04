
execute at @e[tag=fill,scores={fill=16}] run fill ~-17 ~ ~-17 ~-17 ~ ~17 minecraft:magma_block
execute at @e[tag=fill,scores={fill=16}] run fill ~-17 ~ ~-17 ~17 ~ ~-17 minecraft:magma_block
execute at @e[tag=fill,scores={fill=16}] run fill ~17 ~ ~17 ~-17 ~ ~17 minecraft:magma_block
execute at @e[tag=fill,scores={fill=16}] run fill ~17 ~ ~17 ~17 ~ ~-17 minecraft:magma_block
scoreboard players set @e[tag=fill,scores={fill=16}] fill 17
execute if score WBSize options matches 36.. run schedule function scaffolding_rush:game/lava/global_rising/fill_18 2t
   