
execute at @a[scores={player.death.animation=1..}] run particle lava ~ ~ ~ 0.5 0.5 0.5 0 3 normal

execute as @a[scores={player.death.animation=1..}] at @s anchored eyes positioned ^ ^ ^ if block ~1 ~ ~ magma_block on vehicle at @s run tp @s ~ ~1 ~
execute as @a[scores={player.death.animation=1..}] at @s anchored eyes positioned ^ ^ ^ if block ~-1 ~ ~ magma_block on vehicle at @s run tp @s ~ ~1 ~
execute as @a[scores={player.death.animation=1..}] at @s anchored eyes positioned ^ ^ ^ if block ~ ~ ~1 magma_block on vehicle at @s run tp @s ~ ~1 ~
execute as @a[scores={player.death.animation=1..}] at @s anchored eyes positioned ^ ^ ^ if block ~ ~ ~-1 magma_block on vehicle at @s run tp @s ~ ~1 ~

execute as @e[tag=player.death.animation.vehicle] at @s run tp @s ~ ~-0.025 ~
execute as @a[scores={player.death.animation=1..}] at @s run ride @s mount @e[tag=player.death.animation.vehicle,limit=1,sort=nearest]

kill @e[tag=player.death.animation.vehicle,scores={player.death.animation=1}]
execute as @a[scores={player.death.animation=1}] at @s run function scaffolding_rush:player/death/kill

scoreboard players remove @e[scores={player.death.animation=1..}] player.death.animation 1