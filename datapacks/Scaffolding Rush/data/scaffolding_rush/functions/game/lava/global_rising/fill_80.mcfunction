execute at @e[tag=fill,scores={fill=81}] run fill ~-80 ~ ~-80 ~-80 ~ ~80 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=81}] run fill ~-80 ~ ~-80 ~80 ~ ~-80 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=81}] run fill ~80 ~ ~80 ~-80 ~ ~80 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=81}] run fill ~80 ~ ~80 ~80 ~ ~-80 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=81}] fill 80
schedule function scaffolding_rush:game/lava/global_rising/fill_79 2t
