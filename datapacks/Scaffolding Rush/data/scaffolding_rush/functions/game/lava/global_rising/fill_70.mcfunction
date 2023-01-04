
execute at @e[tag=fill,scores={fill=69}] run fill ~-70 ~ ~-70 ~-70 ~ ~70 minecraft:magma_block
execute at @e[tag=fill,scores={fill=69}] run fill ~-70 ~ ~-70 ~70 ~ ~-70 minecraft:magma_block
execute at @e[tag=fill,scores={fill=69}] run fill ~70 ~ ~70 ~-70 ~ ~70 minecraft:magma_block
execute at @e[tag=fill,scores={fill=69}] run fill ~70 ~ ~70 ~70 ~ ~-70 minecraft:magma_block
scoreboard players set @e[tag=fill,scores={fill=69}] fill 70
execute if score WBSize options matches 142.. run schedule function scaffolding_rush:game/lava/global_rising/fill_71 2t
   