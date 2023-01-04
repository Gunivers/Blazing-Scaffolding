
execute at @e[tag=fill,scores={fill=56}] run fill ~-57 ~ ~-57 ~-57 ~ ~57 minecraft:magma_block
execute at @e[tag=fill,scores={fill=56}] run fill ~-57 ~ ~-57 ~57 ~ ~-57 minecraft:magma_block
execute at @e[tag=fill,scores={fill=56}] run fill ~57 ~ ~57 ~-57 ~ ~57 minecraft:magma_block
execute at @e[tag=fill,scores={fill=56}] run fill ~57 ~ ~57 ~57 ~ ~-57 minecraft:magma_block
scoreboard players set @e[tag=fill,scores={fill=56}] fill 57
execute if score WBSize options matches 116.. run schedule function scaffolding_rush:game/lava/global_rising/fill_58 2t
   