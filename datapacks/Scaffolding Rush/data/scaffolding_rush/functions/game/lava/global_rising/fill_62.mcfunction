execute at @e[tag=fill,scores={fill=63}] run fill ~-62 ~ ~-62 ~-62 ~ ~62 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=63}] run fill ~-62 ~ ~-62 ~62 ~ ~-62 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=63}] run fill ~62 ~ ~62 ~-62 ~ ~62 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=63}] run fill ~62 ~ ~62 ~62 ~ ~-62 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=63}] fill 62
schedule function scaffolding_rush:game/lava/global_rising/fill_61 2t
