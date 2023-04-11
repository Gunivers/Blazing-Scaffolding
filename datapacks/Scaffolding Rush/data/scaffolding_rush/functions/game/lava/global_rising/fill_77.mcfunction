
execute at @e[tag=fill,scores={fill=76}] run fill ~-77 ~ ~-77 ~-77 ~ ~77 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=76}] run fill ~-77 ~ ~-77 ~77 ~ ~-77 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=76}] run fill ~77 ~ ~77 ~-77 ~ ~77 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=76}] run fill ~77 ~ ~77 ~77 ~ ~-77 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=76}] fill 77
execute if score WBSize options matches 156.. run schedule function scaffolding_rush:game/lava/global_rising/fill_78 2t
   