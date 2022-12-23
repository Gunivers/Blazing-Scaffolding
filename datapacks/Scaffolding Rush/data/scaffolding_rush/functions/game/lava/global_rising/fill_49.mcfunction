execute at @e[tag=fill,scores={fill=50}] run fill ~-49 ~ ~-49 ~-49 ~ ~49 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=50}] run fill ~-49 ~ ~-49 ~49 ~ ~-49 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=50}] run fill ~49 ~ ~49 ~-49 ~ ~49 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=50}] run fill ~49 ~ ~49 ~49 ~ ~-49 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=50}] fill 49
schedule function scaffolding_rush:game/lava/global_rising/fill_48 2t
