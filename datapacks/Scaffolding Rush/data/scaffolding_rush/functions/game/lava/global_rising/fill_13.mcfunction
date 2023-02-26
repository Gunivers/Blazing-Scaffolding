
execute at @e[tag=fill,scores={fill=12}] run fill ~-13 ~ ~-13 ~-13 ~ ~13 minecraft:magma_block
execute at @e[tag=fill,scores={fill=12}] run fill ~-13 ~ ~-13 ~13 ~ ~-13 minecraft:magma_block
execute at @e[tag=fill,scores={fill=12}] run fill ~13 ~ ~13 ~-13 ~ ~13 minecraft:magma_block
execute at @e[tag=fill,scores={fill=12}] run fill ~13 ~ ~13 ~13 ~ ~-13 minecraft:magma_block
scoreboard players set @e[tag=fill,scores={fill=12}] fill 13
execute if score WBSize options matches 28.. run schedule function scaffolding_rush:game/lava/global_rising/fill_14 2t
   