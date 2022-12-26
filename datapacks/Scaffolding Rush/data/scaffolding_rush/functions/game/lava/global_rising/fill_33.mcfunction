execute at @e[tag=fill,scores={fill=34}] run fill ~-33 ~ ~-33 ~-33 ~ ~33 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=34}] run fill ~-33 ~ ~-33 ~33 ~ ~-33 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=34}] run fill ~33 ~ ~33 ~-33 ~ ~33 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=34}] run fill ~33 ~ ~33 ~33 ~ ~-33 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=34}] fill 33
schedule function scaffolding_rush:game/lava/global_rising/fill_32 2t
