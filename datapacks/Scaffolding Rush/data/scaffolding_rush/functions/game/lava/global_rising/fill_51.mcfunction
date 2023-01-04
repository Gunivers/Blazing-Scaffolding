
execute at @e[tag=fill,scores={fill=50}] run fill ~-51 ~ ~-51 ~-51 ~ ~51 minecraft:magma_block
execute at @e[tag=fill,scores={fill=50}] run fill ~-51 ~ ~-51 ~51 ~ ~-51 minecraft:magma_block
execute at @e[tag=fill,scores={fill=50}] run fill ~51 ~ ~51 ~-51 ~ ~51 minecraft:magma_block
execute at @e[tag=fill,scores={fill=50}] run fill ~51 ~ ~51 ~51 ~ ~-51 minecraft:magma_block
scoreboard players set @e[tag=fill,scores={fill=50}] fill 51
execute if score WBSize options matches 104.. run schedule function scaffolding_rush:game/lava/global_rising/fill_52 2t
   