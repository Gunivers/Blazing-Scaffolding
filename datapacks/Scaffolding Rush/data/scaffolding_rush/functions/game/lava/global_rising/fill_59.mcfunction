
execute at @e[tag=fill,scores={fill=58}] run fill ~-59 ~ ~-59 ~-59 ~ ~59 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=58}] run fill ~-59 ~ ~-59 ~59 ~ ~-59 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=58}] run fill ~59 ~ ~59 ~-59 ~ ~59 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=58}] run fill ~59 ~ ~59 ~59 ~ ~-59 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=58}] fill 59
execute if score WBSize options matches 120.. run schedule function scaffolding_rush:game/lava/global_rising/fill_60 2t
   