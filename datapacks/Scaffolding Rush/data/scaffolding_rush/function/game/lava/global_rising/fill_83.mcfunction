
execute at @e[tag=fill,scores={fill=82}] run fill ~-83 ~ ~-83 ~-83 ~ ~83 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=82}] run fill ~-83 ~ ~-83 ~83 ~ ~-83 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=82}] run fill ~83 ~ ~83 ~-83 ~ ~83 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=82}] run fill ~83 ~ ~83 ~83 ~ ~-83 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=82}] fill 83
execute if score WBSize options matches 168.. run schedule function scaffolding_rush:game/lava/global_rising/fill_84 2t
   