
execute at @e[tag=fill,scores={fill=84}] run fill ~-85 ~ ~-85 ~-85 ~ ~85 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=84}] run fill ~-85 ~ ~-85 ~85 ~ ~-85 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=84}] run fill ~85 ~ ~85 ~-85 ~ ~85 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=84}] run fill ~85 ~ ~85 ~85 ~ ~-85 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=84}] fill 85
execute if score WBSize options matches 172.. run schedule function scaffolding_rush:game/lava/global_rising/fill_86 2t
   