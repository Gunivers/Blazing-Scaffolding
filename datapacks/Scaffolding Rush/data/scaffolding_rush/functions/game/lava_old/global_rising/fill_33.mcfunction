
execute at @e[tag=fill,scores={fill=32}] run fill ~-33 ~ ~-33 ~-33 ~ ~33 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=32}] run fill ~-33 ~ ~-33 ~33 ~ ~-33 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=32}] run fill ~33 ~ ~33 ~-33 ~ ~33 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=32}] run fill ~33 ~ ~33 ~33 ~ ~-33 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=32}] fill 33
execute if score WBSize options matches 68.. run schedule function scaffolding_rush:game/lava/global_rising/fill_34 2t
   