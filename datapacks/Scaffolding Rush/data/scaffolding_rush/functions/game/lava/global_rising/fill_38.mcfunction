
execute at @e[tag=fill,scores={fill=37}] run fill ~-38 ~ ~-38 ~-38 ~ ~38 minecraft:magma_block
execute at @e[tag=fill,scores={fill=37}] run fill ~-38 ~ ~-38 ~38 ~ ~-38 minecraft:magma_block
execute at @e[tag=fill,scores={fill=37}] run fill ~38 ~ ~38 ~-38 ~ ~38 minecraft:magma_block
execute at @e[tag=fill,scores={fill=37}] run fill ~38 ~ ~38 ~38 ~ ~-38 minecraft:magma_block
scoreboard players set @e[tag=fill,scores={fill=37}] fill 38
execute if score WBSize options matches 78.. run schedule function scaffolding_rush:game/lava/global_rising/fill_39 2t
   