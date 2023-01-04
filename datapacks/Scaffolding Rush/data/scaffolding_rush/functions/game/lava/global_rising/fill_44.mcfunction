
execute at @e[tag=fill,scores={fill=43}] run fill ~-44 ~ ~-44 ~-44 ~ ~44 minecraft:magma_block
execute at @e[tag=fill,scores={fill=43}] run fill ~-44 ~ ~-44 ~44 ~ ~-44 minecraft:magma_block
execute at @e[tag=fill,scores={fill=43}] run fill ~44 ~ ~44 ~-44 ~ ~44 minecraft:magma_block
execute at @e[tag=fill,scores={fill=43}] run fill ~44 ~ ~44 ~44 ~ ~-44 minecraft:magma_block
scoreboard players set @e[tag=fill,scores={fill=43}] fill 44
execute if score WBSize options matches 90.. run schedule function scaffolding_rush:game/lava/global_rising/fill_45 2t
   