
execute at @e[tag=fill,scores={fill=42}] run fill ~-43 ~ ~-43 ~-43 ~ ~43 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=42}] run fill ~-43 ~ ~-43 ~43 ~ ~-43 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=42}] run fill ~43 ~ ~43 ~-43 ~ ~43 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=42}] run fill ~43 ~ ~43 ~43 ~ ~-43 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=42}] fill 43
execute if score WBSize options matches 88.. run schedule function scaffolding_rush:game/lava/global_rising/fill_44 2t
   