execute at @e[tag=fill,scores={fill=22}] run fill ~-21 ~ ~-21 ~-21 ~ ~21 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=22}] run fill ~-21 ~ ~-21 ~21 ~ ~-21 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=22}] run fill ~21 ~ ~21 ~-21 ~ ~21 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=22}] run fill ~21 ~ ~21 ~21 ~ ~-21 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=22}] fill 21
schedule function scaffolding_rush:game/lava/global_rising/fill_20 2t
