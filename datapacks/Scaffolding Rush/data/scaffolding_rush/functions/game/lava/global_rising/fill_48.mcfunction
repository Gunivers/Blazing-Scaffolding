
execute at @e[tag=fill,scores={fill=47}] run fill ~-48 ~ ~-48 ~-48 ~ ~48 minecraft:magma_block
execute at @e[tag=fill,scores={fill=47}] run fill ~-48 ~ ~-48 ~48 ~ ~-48 minecraft:magma_block
execute at @e[tag=fill,scores={fill=47}] run fill ~48 ~ ~48 ~-48 ~ ~48 minecraft:magma_block
execute at @e[tag=fill,scores={fill=47}] run fill ~48 ~ ~48 ~48 ~ ~-48 minecraft:magma_block
scoreboard players set @e[tag=fill,scores={fill=47}] fill 48
execute if score WBSize options matches 98.. run schedule function scaffolding_rush:game/lava/global_rising/fill_49 2t
   