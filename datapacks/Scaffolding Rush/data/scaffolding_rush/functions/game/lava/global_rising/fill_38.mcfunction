execute at @e[tag=fill,scores={fill=39}] run fill ~-38 ~ ~-38 ~-38 ~ ~38 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=39}] run fill ~-38 ~ ~-38 ~38 ~ ~-38 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=39}] run fill ~38 ~ ~38 ~-38 ~ ~38 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=39}] run fill ~38 ~ ~38 ~38 ~ ~-38 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=39}] fill 38
schedule function scaffolding_rush:game/lava/global_rising/fill_37 2t
