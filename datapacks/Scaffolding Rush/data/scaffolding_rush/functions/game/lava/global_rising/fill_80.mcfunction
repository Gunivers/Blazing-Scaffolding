
execute at @e[tag=fill,scores={fill=79}] run fill ~-80 ~ ~-80 ~-80 ~ ~80 minecraft:magma_block
execute at @e[tag=fill,scores={fill=79}] run fill ~-80 ~ ~-80 ~80 ~ ~-80 minecraft:magma_block
execute at @e[tag=fill,scores={fill=79}] run fill ~80 ~ ~80 ~-80 ~ ~80 minecraft:magma_block
execute at @e[tag=fill,scores={fill=79}] run fill ~80 ~ ~80 ~80 ~ ~-80 minecraft:magma_block
scoreboard players set @e[tag=fill,scores={fill=79}] fill 80
execute if score WBSize options matches 162.. run schedule function scaffolding_rush:game/lava/global_rising/fill_81 2t
   