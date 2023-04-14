
execute if score VolcanoSummonTimer timer >= VolcanoSummonPeriod options run function scaffolding_rush:game/volcano/summon
execute if score VolcanoSummonTimer timer >= VolcanoSummonPeriod options run scoreboard players set VolcanoSummonTimer timer 0
scoreboard players add VolcanoSummonTimer timer 1

execute if score VolcanoPopTimer timer >= VolcanoPopPeriod options at @e[tag=VolcanoBase] positioned ~ ~3 ~ run function scaffolding_rush:game/volcano/projection/summon
execute if score VolcanoPopTimer timer >= VolcanoPopPeriod options run scoreboard players set VolcanoPopTimer timer 0
scoreboard players add VolcanoPopTimer timer 1

execute if entity @e[tag=VolcanoPop] run function scaffolding_rush:game/volcano/projection/motion

execute at @e[tag=VolcanoBase,scores={glib.lifetime=4}] run place template scaffolding_rush:volcano ~-7 ~-4 ~-7
execute at @e[tag=VolcanoBase,scores={glib.lifetime=8}] run place template scaffolding_rush:volcano ~-7 ~-3 ~-7
execute at @e[tag=VolcanoBase,scores={glib.lifetime=12}] run place template scaffolding_rush:volcano ~-7 ~-2 ~-7
execute at @e[tag=VolcanoBase,scores={glib.lifetime=16}] run place template scaffolding_rush:volcano ~-7 ~-1 ~-7
execute at @e[tag=VolcanoBase,scores={glib.lifetime=20}] run place template scaffolding_rush:volcano ~-7 ~ ~-7

execute as @e[tag=VolcanoBase] at @s if block 1000 ~5 1000 magma_block run kill @s
