execute at @e[tag=fill,scores={fill=54}] run fill ~-53 ~ ~-53 ~-53 ~ ~53 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=54}] run fill ~-53 ~ ~-53 ~53 ~ ~-53 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=54}] run fill ~53 ~ ~53 ~-53 ~ ~53 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=54}] run fill ~53 ~ ~53 ~53 ~ ~-53 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=54}] fill 53
schedule function scaffolding_rush:game/lava/global_rising/fill_52 2t
