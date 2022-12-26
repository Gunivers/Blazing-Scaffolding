execute at @e[tag=fill,scores={fill=78}] run fill ~-77 ~ ~-77 ~-77 ~ ~77 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=78}] run fill ~-77 ~ ~-77 ~77 ~ ~-77 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=78}] run fill ~77 ~ ~77 ~-77 ~ ~77 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=78}] run fill ~77 ~ ~77 ~77 ~ ~-77 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=78}] fill 77
schedule function scaffolding_rush:game/lava/global_rising/fill_76 2t
