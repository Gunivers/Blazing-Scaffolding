execute at @e[tag=fill,scores={fill=38}] run fill ~-37 ~ ~-37 ~-37 ~ ~37 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=38}] run fill ~-37 ~ ~-37 ~37 ~ ~-37 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=38}] run fill ~37 ~ ~37 ~-37 ~ ~37 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=38}] run fill ~37 ~ ~37 ~37 ~ ~-37 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=38}] fill 37
schedule function scaffolding_rush:game/lava/global_rising/fill_36 2t
