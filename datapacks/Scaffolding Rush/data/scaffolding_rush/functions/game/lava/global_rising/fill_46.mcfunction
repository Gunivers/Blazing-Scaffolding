execute at @e[tag=fill,scores={fill=47}] run fill ~-46 ~ ~-46 ~-46 ~ ~46 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=47}] run fill ~-46 ~ ~-46 ~46 ~ ~-46 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=47}] run fill ~46 ~ ~46 ~-46 ~ ~46 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=47}] run fill ~46 ~ ~46 ~46 ~ ~-46 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=47}] fill 46
schedule function scaffolding_rush:game/lava/global_rising/fill_45 2t
