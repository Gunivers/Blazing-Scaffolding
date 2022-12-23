execute at @e[tag=fill,scores={fill=46}] run fill ~-45 ~ ~-45 ~-45 ~ ~45 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=46}] run fill ~-45 ~ ~-45 ~45 ~ ~-45 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=46}] run fill ~45 ~ ~45 ~-45 ~ ~45 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=46}] run fill ~45 ~ ~45 ~45 ~ ~-45 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=46}] fill 45
schedule function scaffolding_rush:game/lava/global_rising/fill_44 2t
