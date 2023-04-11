
execute at @e[tag=fill,scores={fill=38}] run fill ~-39 ~ ~-39 ~-39 ~ ~39 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=38}] run fill ~-39 ~ ~-39 ~39 ~ ~-39 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=38}] run fill ~39 ~ ~39 ~-39 ~ ~39 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=38}] run fill ~39 ~ ~39 ~39 ~ ~-39 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=38}] fill 39
execute if score WBSize options matches 80.. run schedule function scaffolding_rush:game/lava/global_rising/fill_40 2t
   