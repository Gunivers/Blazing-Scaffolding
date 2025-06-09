
execute at @e[tag=fill,scores={fill=36}] run fill ~-37 ~ ~-37 ~-37 ~ ~37 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=36}] run fill ~-37 ~ ~-37 ~37 ~ ~-37 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=36}] run fill ~37 ~ ~37 ~-37 ~ ~37 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=36}] run fill ~37 ~ ~37 ~37 ~ ~-37 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=36}] fill 37
execute if score WBSize options matches 76.. run schedule function scaffolding_rush:game/lava/global_rising/fill_38 2t
   