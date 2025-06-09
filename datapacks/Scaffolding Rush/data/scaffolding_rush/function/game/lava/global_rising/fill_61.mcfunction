
execute at @e[tag=fill,scores={fill=60}] run fill ~-61 ~ ~-61 ~-61 ~ ~61 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=60}] run fill ~-61 ~ ~-61 ~61 ~ ~-61 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=60}] run fill ~61 ~ ~61 ~-61 ~ ~61 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=60}] run fill ~61 ~ ~61 ~61 ~ ~-61 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=60}] fill 61
execute if score WBSize options matches 124.. run schedule function scaffolding_rush:game/lava/global_rising/fill_62 2t
   