
execute at @e[tag=fill,scores={fill=53}] run fill ~-54 ~ ~-54 ~-54 ~ ~54 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=53}] run fill ~-54 ~ ~-54 ~54 ~ ~-54 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=53}] run fill ~54 ~ ~54 ~-54 ~ ~54 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=53}] run fill ~54 ~ ~54 ~54 ~ ~-54 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=53}] fill 54
execute if score WBSize options matches 110.. run schedule function scaffolding_rush:game/lava/global_rising/fill_55 2t
   