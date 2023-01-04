
execute at @e[tag=fill,scores={fill=35}] run fill ~-36 ~ ~-36 ~-36 ~ ~36 minecraft:magma_block
execute at @e[tag=fill,scores={fill=35}] run fill ~-36 ~ ~-36 ~36 ~ ~-36 minecraft:magma_block
execute at @e[tag=fill,scores={fill=35}] run fill ~36 ~ ~36 ~-36 ~ ~36 minecraft:magma_block
execute at @e[tag=fill,scores={fill=35}] run fill ~36 ~ ~36 ~36 ~ ~-36 minecraft:magma_block
scoreboard players set @e[tag=fill,scores={fill=35}] fill 36
execute if score WBSize options matches 74.. run schedule function scaffolding_rush:game/lava/global_rising/fill_37 2t
   