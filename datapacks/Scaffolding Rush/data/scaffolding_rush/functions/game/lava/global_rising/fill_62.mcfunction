
execute at @e[tag=fill,scores={fill=61}] run fill ~-62 ~ ~-62 ~-62 ~ ~62 minecraft:magma_block
execute at @e[tag=fill,scores={fill=61}] run fill ~-62 ~ ~-62 ~62 ~ ~-62 minecraft:magma_block
execute at @e[tag=fill,scores={fill=61}] run fill ~62 ~ ~62 ~-62 ~ ~62 minecraft:magma_block
execute at @e[tag=fill,scores={fill=61}] run fill ~62 ~ ~62 ~62 ~ ~-62 minecraft:magma_block
scoreboard players set @e[tag=fill,scores={fill=61}] fill 62
execute if score WBSize options matches 126.. run schedule function scaffolding_rush:game/lava/global_rising/fill_63 2t
   