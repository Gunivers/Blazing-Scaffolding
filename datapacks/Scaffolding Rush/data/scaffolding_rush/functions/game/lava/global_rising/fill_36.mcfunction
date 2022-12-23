execute at @e[tag=fill,scores={fill=37}] run fill ~-36 ~ ~-36 ~-36 ~ ~36 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=37}] run fill ~-36 ~ ~-36 ~36 ~ ~-36 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=37}] run fill ~36 ~ ~36 ~-36 ~ ~36 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=37}] run fill ~36 ~ ~36 ~36 ~ ~-36 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=37}] fill 36
schedule function scaffolding_rush:game/lava/global_rising/fill_35 2t
