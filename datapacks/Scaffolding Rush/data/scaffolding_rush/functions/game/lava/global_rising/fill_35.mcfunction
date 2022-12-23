execute at @e[tag=fill,scores={fill=36}] run fill ~-35 ~ ~-35 ~-35 ~ ~35 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=36}] run fill ~-35 ~ ~-35 ~35 ~ ~-35 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=36}] run fill ~35 ~ ~35 ~-35 ~ ~35 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=36}] run fill ~35 ~ ~35 ~35 ~ ~-35 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=36}] fill 35
schedule function scaffolding_rush:game/lava/global_rising/fill_34 2t
