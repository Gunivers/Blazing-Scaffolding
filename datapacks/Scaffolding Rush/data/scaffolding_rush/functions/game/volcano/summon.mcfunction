summon marker 1000 500 1000 {Tags:["Volcano","VolcanoBase","VolcanoBaseNew"]}

spreadplayers 1000 1000 0 50 false @e[type=marker,tag=VolcanoBaseNew]

execute as @e[type=marker,tag=VolcanoBaseNew] at @s unless block ~ ~-1 ~ magma_block run tag @s add VolcanoCanceled
execute as @e[type=marker,tag=VolcanoBaseNew] at @s if block 1000 ~5 1000 magma_block run tag @s add VolcanoCanceled
execute as @e[type=marker,tag=VolcanoBaseNew] at @s if entity @e[type=villager,tag=game_villager,distance=..15] run tag @s add VolcanoCanceled
execute if entity @e[type=marker,tag=VolcanoCanceled] run scoreboard players remove VolcanoSummonTimer timer 10
kill @e[type=marker,tag=VolcanoCanceled]

execute at @e[type=marker,tag=VolcanoBaseNew] run playsound minecraft:entity.warden.dig master @a ~ ~1000 ~ 2 0.5 1

execute at @e[type=marker,tag=VolcanoBaseNew] run place template scaffolding_rush:volcano ~-7 ~-5 ~-7

tag @e remove VolcanoBaseNew