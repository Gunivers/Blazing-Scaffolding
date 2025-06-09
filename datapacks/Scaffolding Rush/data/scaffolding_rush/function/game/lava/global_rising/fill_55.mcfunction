
execute at @e[tag=fill,scores={fill=54}] run fill ~-55 ~ ~-55 ~-55 ~ ~55 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=54}] run fill ~-55 ~ ~-55 ~55 ~ ~-55 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=54}] run fill ~55 ~ ~55 ~-55 ~ ~55 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=54}] run fill ~55 ~ ~55 ~55 ~ ~-55 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=54}] fill 55
execute if score WBSize options matches 112.. run schedule function scaffolding_rush:game/lava/global_rising/fill_56 2t
   