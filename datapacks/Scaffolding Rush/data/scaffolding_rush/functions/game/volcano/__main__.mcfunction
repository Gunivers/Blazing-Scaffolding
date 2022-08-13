# say /volcano/main

scoreboard players set VolcanoSummonPeriod options 2400
execute if score VolcanoSummonTimer timer = VolcanoSummonPeriod options run function scaffolding_rush:game/volcano/summon
execute if score VolcanoSummonTimer timer = VolcanoSummonPeriod options run scoreboard players set VolcanoSummonTimer timer 0
scoreboard players add VolcanoSummonTimer timer 1

scoreboard players set VolcanoPopPeriod options 10
execute if score VolcanoPopTimer timer = VolcanoPopPeriod options at @e[tag=VolcanoBase] run function scaffolding_rush:game/volcano/projection/summon
execute if score VolcanoPopTimer timer = VolcanoPopPeriod options run scoreboard players set VolcanoPopTimer timer 0
scoreboard players add VolcanoPopTimer timer 1

function scaffolding_rush:game/volcano/projection/motion

execute as @e[tag=Volcano] at @s run particle lava ~ ~ ~ 0.5 0.5 0.5 0 1 force
execute as @e[tag=Volcano,scores={glib.lifetime=5..}] at @s unless block ~ ~-0.01 ~ air run tag @s add Volcano_impact
# tag @e[tag=Volcano_impact] remove Volcano
execute as @e[tag=Volcano_impact] at @s run playsound minecraft:entity.generic.explode master @a[distance=..30] ~ ~ ~ 2 1 1
execute as @e[tag=Volcano_impact] at @s run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
kill @e[tag=Volcano_impact]

execute as @e[tag=VolcanoBase] at @s if block ~ ~4 ~ magma_block run kill @s
