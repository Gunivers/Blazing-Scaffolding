execute at @e[tag=fill,scores={fill=31}] run fill ~-30 ~ ~-30 ~-30 ~ ~30 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=31}] run fill ~-30 ~ ~-30 ~30 ~ ~-30 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=31}] run fill ~30 ~ ~30 ~-30 ~ ~30 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=31}] run fill ~30 ~ ~30 ~30 ~ ~-30 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=31}] fill 30
schedule function scaffolding_rush:game/lava/global_rising/fill_29 2t
