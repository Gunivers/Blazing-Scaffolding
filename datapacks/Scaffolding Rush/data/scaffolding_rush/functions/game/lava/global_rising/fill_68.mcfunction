execute at @e[tag=fill,scores={fill=69}] run fill ~-68 ~ ~-68 ~-68 ~ ~68 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=69}] run fill ~-68 ~ ~-68 ~68 ~ ~-68 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=69}] run fill ~68 ~ ~68 ~-68 ~ ~68 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=69}] run fill ~68 ~ ~68 ~68 ~ ~-68 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=69}] fill 68
schedule function scaffolding_rush:game/lava/global_rising/fill_67 2t
