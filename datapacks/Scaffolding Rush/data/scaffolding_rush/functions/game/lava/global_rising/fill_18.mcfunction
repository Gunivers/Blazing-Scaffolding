execute at @e[tag=fill,scores={fill=19}] run fill ~-18 ~ ~-18 ~-18 ~ ~18 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=19}] run fill ~-18 ~ ~-18 ~18 ~ ~-18 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=19}] run fill ~18 ~ ~18 ~-18 ~ ~18 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=19}] run fill ~18 ~ ~18 ~18 ~ ~-18 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=19}] fill 18
schedule function scaffolding_rush:game/lava/global_rising/fill_17 2t
