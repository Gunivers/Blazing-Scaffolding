
execute at @e[tag=fill,scores={fill=65}] run fill ~-66 ~ ~-66 ~-66 ~ ~66 minecraft:magma_block
execute at @e[tag=fill,scores={fill=65}] run fill ~-66 ~ ~-66 ~66 ~ ~-66 minecraft:magma_block
execute at @e[tag=fill,scores={fill=65}] run fill ~66 ~ ~66 ~-66 ~ ~66 minecraft:magma_block
execute at @e[tag=fill,scores={fill=65}] run fill ~66 ~ ~66 ~66 ~ ~-66 minecraft:magma_block
scoreboard players set @e[tag=fill,scores={fill=65}] fill 66
execute if score WBSize options matches 134.. run schedule function scaffolding_rush:game/lava/global_rising/fill_67 2t
   