
execute at @e[tag=fill,scores={fill=51}] run fill ~-52 ~ ~-52 ~-52 ~ ~52 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=51}] run fill ~-52 ~ ~-52 ~52 ~ ~-52 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=51}] run fill ~52 ~ ~52 ~-52 ~ ~52 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=51}] run fill ~52 ~ ~52 ~52 ~ ~-52 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=51}] fill 52
execute if score WBSize options matches 106.. run schedule function scaffolding_rush:game/lava/global_rising/fill_53 2t
   