
execute at @e[tag=fill,scores={fill=59}] run fill ~-60 ~ ~-60 ~-60 ~ ~60 minecraft:magma_block
execute at @e[tag=fill,scores={fill=59}] run fill ~-60 ~ ~-60 ~60 ~ ~-60 minecraft:magma_block
execute at @e[tag=fill,scores={fill=59}] run fill ~60 ~ ~60 ~-60 ~ ~60 minecraft:magma_block
execute at @e[tag=fill,scores={fill=59}] run fill ~60 ~ ~60 ~60 ~ ~-60 minecraft:magma_block
scoreboard players set @e[tag=fill,scores={fill=59}] fill 60
execute if score WBSize options matches 122.. run schedule function scaffolding_rush:game/lava/global_rising/fill_61 2t
   