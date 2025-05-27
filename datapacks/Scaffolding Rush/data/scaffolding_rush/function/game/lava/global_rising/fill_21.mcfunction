
execute at @e[tag=fill,scores={fill=20}] run fill ~-21 ~ ~-21 ~-21 ~ ~21 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=20}] run fill ~-21 ~ ~-21 ~21 ~ ~-21 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=20}] run fill ~21 ~ ~21 ~-21 ~ ~21 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=20}] run fill ~21 ~ ~21 ~21 ~ ~-21 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=20}] fill 21
execute if score WBSize options matches 44.. run schedule function scaffolding_rush:game/lava/global_rising/fill_22 2t
   