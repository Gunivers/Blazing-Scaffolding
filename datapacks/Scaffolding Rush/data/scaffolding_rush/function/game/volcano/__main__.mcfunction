
execute if score VolcanoSummonTimer timer >= VolcanoSummonPeriod options run function scaffolding_rush:game/volcano/summon
execute if score VolcanoSummonTimer timer >= VolcanoSummonPeriod options run scoreboard players set VolcanoSummonTimer timer 0
scoreboard players add VolcanoSummonTimer timer 1

execute if score VolcanoPopTimer timer >= VolcanoPopPeriod options at @e[type=marker,tag=VolcanoBase] positioned ~ ~3 ~ run function scaffolding_rush:game/volcano/projection/summon
execute if score VolcanoPopTimer timer >= VolcanoPopPeriod options run scoreboard players set VolcanoPopTimer timer 0
scoreboard players add VolcanoPopTimer timer 1

execute if entity @e[type=marker,tag=VolcanoPop] run function scaffolding_rush:game/volcano/projection/motion

execute if score #volcano.type data matches 0 at @e[type=marker,tag=VolcanoBase,scores={glib.lifetime=1}] run place template scaffolding_rush:volcano ~-7 ~-6 ~-7
execute if score #volcano.type data matches 0 at @e[type=marker,tag=VolcanoBase,scores={glib.lifetime=4}] run place template scaffolding_rush:volcano ~-7 ~-5 ~-7
execute if score #volcano.type data matches 0 at @e[type=marker,tag=VolcanoBase,scores={glib.lifetime=8}] run place template scaffolding_rush:volcano ~-7 ~-4 ~-7
execute if score #volcano.type data matches 0 at @e[type=marker,tag=VolcanoBase,scores={glib.lifetime=12}] run place template scaffolding_rush:volcano ~-7 ~-3 ~-7
execute if score #volcano.type data matches 0 at @e[type=marker,tag=VolcanoBase,scores={glib.lifetime=16}] run place template scaffolding_rush:volcano ~-7 ~-2 ~-7
execute if score #volcano.type data matches 0 at @e[type=marker,tag=VolcanoBase,scores={glib.lifetime=20}] run place template scaffolding_rush:volcano ~-7 ~-1 ~-7

execute if score #volcano.type data matches 1 at @e[type=marker,tag=VolcanoBase,scores={glib.lifetime=1}] run place template scaffolding_rush:volcano ~7 ~-6 ~7 180
execute if score #volcano.type data matches 1 at @e[type=marker,tag=VolcanoBase,scores={glib.lifetime=4}] run place template scaffolding_rush:volcano ~7 ~-5 ~7 180
execute if score #volcano.type data matches 1 at @e[type=marker,tag=VolcanoBase,scores={glib.lifetime=8}] run place template scaffolding_rush:volcano ~7 ~-4 ~7 180
execute if score #volcano.type data matches 1 at @e[type=marker,tag=VolcanoBase,scores={glib.lifetime=12}] run place template scaffolding_rush:volcano ~7 ~-3 ~7 180
execute if score #volcano.type data matches 1 at @e[type=marker,tag=VolcanoBase,scores={glib.lifetime=16}] run place template scaffolding_rush:volcano ~7 ~-2 ~7 180
execute if score #volcano.type data matches 1 at @e[type=marker,tag=VolcanoBase,scores={glib.lifetime=20}] run place template scaffolding_rush:volcano ~7 ~-1 ~7 180

execute if score #volcano.type data matches 2 at @e[type=marker,tag=VolcanoBase,scores={glib.lifetime=1}] run place template scaffolding_rush:volcano ~7 ~-6 ~-7 clockwise_90
execute if score #volcano.type data matches 2 at @e[type=marker,tag=VolcanoBase,scores={glib.lifetime=6}] run place template scaffolding_rush:volcano ~7 ~-5 ~-7 clockwise_90
execute if score #volcano.type data matches 2 at @e[type=marker,tag=VolcanoBase,scores={glib.lifetime=8}] run place template scaffolding_rush:volcano ~7 ~-4 ~-7 clockwise_90
execute if score #volcano.type data matches 2 at @e[type=marker,tag=VolcanoBase,scores={glib.lifetime=12}] run place template scaffolding_rush:volcano ~7 ~-3 ~-7 clockwise_90
execute if score #volcano.type data matches 2 at @e[type=marker,tag=VolcanoBase,scores={glib.lifetime=16}] run place template scaffolding_rush:volcano ~7 ~-2 ~-7 clockwise_90
execute if score #volcano.type data matches 2 at @e[type=marker,tag=VolcanoBase,scores={glib.lifetime=20}] run place template scaffolding_rush:volcano ~7 ~-1 ~-7 clockwise_90

execute if score #volcano.type data matches 3 at @e[type=marker,tag=VolcanoBase,scores={glib.lifetime=1}] run place template scaffolding_rush:volcano ~-7 ~-6 ~7 counterclockwise_90
execute if score #volcano.type data matches 3 at @e[type=marker,tag=VolcanoBase,scores={glib.lifetime=4}] run place template scaffolding_rush:volcano ~-7 ~-5 ~7 counterclockwise_90
execute if score #volcano.type data matches 3 at @e[type=marker,tag=VolcanoBase,scores={glib.lifetime=8}] run place template scaffolding_rush:volcano ~-7 ~-4 ~7 counterclockwise_90
execute if score #volcano.type data matches 3 at @e[type=marker,tag=VolcanoBase,scores={glib.lifetime=12}] run place template scaffolding_rush:volcano ~-7 ~-3 ~7 counterclockwise_90
execute if score #volcano.type data matches 3 at @e[type=marker,tag=VolcanoBase,scores={glib.lifetime=16}] run place template scaffolding_rush:volcano ~-7 ~-2 ~7 counterclockwise_90
execute if score #volcano.type data matches 3 at @e[type=marker,tag=VolcanoBase,scores={glib.lifetime=20}] run place template scaffolding_rush:volcano ~-7 ~-1 ~7 counterclockwise_90

execute as @e[type=marker,tag=VolcanoBase] at @s if block 1000 ~5 1000 magma_block run kill @s
