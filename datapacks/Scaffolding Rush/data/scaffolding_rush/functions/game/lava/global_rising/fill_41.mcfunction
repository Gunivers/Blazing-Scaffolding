
execute at @e[tag=fill,scores={fill=40}] run fill ~-41 ~ ~-41 ~-41 ~ ~41 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=40}] run fill ~-41 ~ ~-41 ~41 ~ ~-41 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=40}] run fill ~41 ~ ~41 ~-41 ~ ~41 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=40}] run fill ~41 ~ ~41 ~41 ~ ~-41 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=40}] fill 41
execute if score WBSize options matches 84.. run schedule function scaffolding_rush:game/lava/global_rising/fill_42 2t
   