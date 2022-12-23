execute at @e[tag=fill,scores={fill=28}] run fill ~-27 ~ ~-27 ~-27 ~ ~27 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=28}] run fill ~-27 ~ ~-27 ~27 ~ ~-27 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=28}] run fill ~27 ~ ~27 ~-27 ~ ~27 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=28}] run fill ~27 ~ ~27 ~27 ~ ~-27 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=28}] fill 27
schedule function scaffolding_rush:game/lava/global_rising/fill_26 2t
