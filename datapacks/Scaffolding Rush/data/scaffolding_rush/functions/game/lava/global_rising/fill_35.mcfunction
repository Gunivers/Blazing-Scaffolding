
execute at @e[tag=fill,scores={fill=34}] run fill ~-35 ~ ~-35 ~-35 ~ ~35 minecraft:magma_block
execute at @e[tag=fill,scores={fill=34}] run fill ~-35 ~ ~-35 ~35 ~ ~-35 minecraft:magma_block
execute at @e[tag=fill,scores={fill=34}] run fill ~35 ~ ~35 ~-35 ~ ~35 minecraft:magma_block
execute at @e[tag=fill,scores={fill=34}] run fill ~35 ~ ~35 ~35 ~ ~-35 minecraft:magma_block
scoreboard players set @e[tag=fill,scores={fill=34}] fill 35
execute if score WBSize options matches 72.. run schedule function scaffolding_rush:game/lava/global_rising/fill_36 2t
   