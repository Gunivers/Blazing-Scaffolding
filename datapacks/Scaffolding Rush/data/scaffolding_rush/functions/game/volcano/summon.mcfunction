
summon marker 1000 0 1000 {Tags:["Volcano","VolcanoNew","VolcanoBase"]}

say 1

spreadplayers 1000 1000 0 50 false @e[tag=VolcanBaseNew]

# execute as @e[tag=VolcanBaseNew] at @s unless block ~ ~-1 ~ magma_block run tag @s add VolcanoCanceled
execute if entity @s[tag=VolcanoCanceled] run scoreboard players remove VolcanoSummonTimer timer 1
kill @e[tag=VolcanoCanceled]

execute at @e[tag=VolcanoBaseNew] run place template scaffolding_rush:volcano ~-6 ~ ~-6

tag @e remove VolcanoBaseNew