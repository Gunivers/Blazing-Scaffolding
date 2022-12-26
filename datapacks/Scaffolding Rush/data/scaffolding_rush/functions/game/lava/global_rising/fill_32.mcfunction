execute at @e[tag=fill,scores={fill=33}] run fill ~-32 ~ ~-32 ~-32 ~ ~32 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=33}] run fill ~-32 ~ ~-32 ~32 ~ ~-32 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=33}] run fill ~32 ~ ~32 ~-32 ~ ~32 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=33}] run fill ~32 ~ ~32 ~32 ~ ~-32 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=33}] fill 32
schedule function scaffolding_rush:game/lava/global_rising/fill_31 2t
