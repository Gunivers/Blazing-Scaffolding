
execute at @e[tag=fill,scores={fill=31}] run fill ~-32 ~ ~-32 ~-32 ~ ~32 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=31}] run fill ~-32 ~ ~-32 ~32 ~ ~-32 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=31}] run fill ~32 ~ ~32 ~-32 ~ ~32 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=31}] run fill ~32 ~ ~32 ~32 ~ ~-32 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=31}] fill 32
execute if score WBSize options matches 66.. run schedule function scaffolding_rush:game/lava/global_rising/fill_33 2t
   