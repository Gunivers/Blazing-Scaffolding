execute at @e[tag=fill,scores={fill=1}] run fill ~-0 ~ ~-0 ~-0 ~ ~0 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=1}] run fill ~-0 ~ ~-0 ~0 ~ ~-0 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=1}] run fill ~0 ~ ~0 ~-0 ~ ~0 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=1}] run fill ~0 ~ ~0 ~0 ~ ~-0 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=1}] fill 0
kill @e[tag=fill,scores={fill=0},type=!player]
#execute if entity @e[tag=fill,type=player] run say Lava rised successfully.
