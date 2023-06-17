
execute at @e[tag=fill,scores={fill=48}] run fill ~-49 ~ ~-49 ~-49 ~ ~49 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=48}] run fill ~-49 ~ ~-49 ~49 ~ ~-49 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=48}] run fill ~49 ~ ~49 ~-49 ~ ~49 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=48}] run fill ~49 ~ ~49 ~49 ~ ~-49 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=48}] fill 49
execute if score WBSize options matches 100.. run schedule function scaffolding_rush:game/lava/global_rising/fill_50 2t
   