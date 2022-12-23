execute at @e[tag=fill,scores={fill=84}] run fill ~-83 ~ ~-83 ~-83 ~ ~83 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=84}] run fill ~-83 ~ ~-83 ~83 ~ ~-83 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=84}] run fill ~83 ~ ~83 ~-83 ~ ~83 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=84}] run fill ~83 ~ ~83 ~83 ~ ~-83 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=84}] fill 83
schedule function scaffolding_rush:game/lava/global_rising/fill_82 2t
