execute at @e[tag=fill,scores={fill=58}] run fill ~-57 ~ ~-57 ~-57 ~ ~57 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=58}] run fill ~-57 ~ ~-57 ~57 ~ ~-57 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=58}] run fill ~57 ~ ~57 ~-57 ~ ~57 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=58}] run fill ~57 ~ ~57 ~57 ~ ~-57 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=58}] fill 57
schedule function scaffolding_rush:game/lava/global_rising/fill_56 2t
