
execute at @e[tag=fill,scores={fill=55}] run fill ~-56 ~ ~-56 ~-56 ~ ~56 minecraft:magma_block
execute at @e[tag=fill,scores={fill=55}] run fill ~-56 ~ ~-56 ~56 ~ ~-56 minecraft:magma_block
execute at @e[tag=fill,scores={fill=55}] run fill ~56 ~ ~56 ~-56 ~ ~56 minecraft:magma_block
execute at @e[tag=fill,scores={fill=55}] run fill ~56 ~ ~56 ~56 ~ ~-56 minecraft:magma_block
scoreboard players set @e[tag=fill,scores={fill=55}] fill 56
execute if score WBSize options matches 114.. run schedule function scaffolding_rush:game/lava/global_rising/fill_57 2t
   