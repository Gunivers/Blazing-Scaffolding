
execute at @e[tag=fill,scores={fill=28}] run fill ~-29 ~ ~-29 ~-29 ~ ~29 minecraft:magma_block
execute at @e[tag=fill,scores={fill=28}] run fill ~-29 ~ ~-29 ~29 ~ ~-29 minecraft:magma_block
execute at @e[tag=fill,scores={fill=28}] run fill ~29 ~ ~29 ~-29 ~ ~29 minecraft:magma_block
execute at @e[tag=fill,scores={fill=28}] run fill ~29 ~ ~29 ~29 ~ ~-29 minecraft:magma_block
scoreboard players set @e[tag=fill,scores={fill=28}] fill 29
execute if score WBSize options matches 60.. run schedule function scaffolding_rush:game/lava/global_rising/fill_30 2t
   