execute at @e[tag=fill,scores={fill=55}] run fill ~-54 ~ ~-54 ~-54 ~ ~54 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=55}] run fill ~-54 ~ ~-54 ~54 ~ ~-54 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=55}] run fill ~54 ~ ~54 ~-54 ~ ~54 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=55}] run fill ~54 ~ ~54 ~54 ~ ~-54 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=55}] fill 54
schedule function scaffolding_rush:game/lava/global_rising/fill_53 2t
