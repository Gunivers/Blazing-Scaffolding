
execute at @e[tag=fill,scores={fill=9}] run fill ~-10 ~ ~-10 ~-10 ~ ~10 minecraft:magma_block
execute at @e[tag=fill,scores={fill=9}] run fill ~-10 ~ ~-10 ~10 ~ ~-10 minecraft:magma_block
execute at @e[tag=fill,scores={fill=9}] run fill ~10 ~ ~10 ~-10 ~ ~10 minecraft:magma_block
execute at @e[tag=fill,scores={fill=9}] run fill ~10 ~ ~10 ~10 ~ ~-10 minecraft:magma_block
scoreboard players set @e[tag=fill,scores={fill=9}] fill 10
execute if score WBSize options matches 22.. run schedule function scaffolding_rush:game/lava/global_rising/fill_11 2t
   