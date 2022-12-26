
execute at @e[tag=fill,scores={fill=70}] run fill ~-71 ~ ~-71 ~-71 ~ ~71 minecraft:magma_block
execute at @e[tag=fill,scores={fill=70}] run fill ~-71 ~ ~-71 ~71 ~ ~-71 minecraft:magma_block
execute at @e[tag=fill,scores={fill=70}] run fill ~71 ~ ~71 ~-71 ~ ~71 minecraft:magma_block
execute at @e[tag=fill,scores={fill=70}] run fill ~71 ~ ~71 ~71 ~ ~-71 minecraft:magma_block
scoreboard players set @e[tag=fill,scores={fill=70}] fill 71
execute if score WBSize options matches 144.. run schedule function scaffolding_rush:game/lava/global_rising/fill_72 2t
   