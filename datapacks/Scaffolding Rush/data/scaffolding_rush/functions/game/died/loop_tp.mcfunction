execute as @a[tag=Respawning] run execute if entity @s[team=red] at @e[type=villager,team=red] run tp @s ~ ~ ~
execute as @a[tag=Respawning] run execute if entity @s[team=blue] at @e[type=villager,team=blue] run tp @s ~ ~ ~
execute as @a[tag=Respawning] run execute if entity @s[team=yellow] at @e[type=villager,team=yellow] run tp @s ~ ~ ~
execute as @a[tag=Respawning] run execute if entity @s[team=green] at @e[type=villager,team=green] run tp @s ~ ~ ~

execute as @a[tag=Respawning] run title @s times 0 10 0

execute as @a[scores={language=0},tag=Respawning] run title @s title ["",{"text":"Respawning...","color":"red"}]
execute as @a[scores={language=1},tag=Respawning] run title @s title ["",{"text":"Réapparition...","color":"red"}]
execute as @a[tag=Respawning] run function scaffolding_rush:game/died/time_respawn

execute as @a[tag=Respawning] run effect give @s minecraft:slowness 1 9 true
execute as @a[tag=Respawning] run effect give @s minecraft:invisibility 1 1 true
execute as @a[tag=Respawning] run effect give @s minecraft:weakness 1 1 true

execute as @a[tag=Respawning] run scoreboard players remove @s respawnTimeTics 1

execute as @a[scores={respawnTime=1..},tag=Respawning] run schedule function scaffolding_rush:game/died/loop_tp 1t
execute as @a[scores={respawnTime=0},tag=Respawning] run function scaffolding_rush:game/died/loop_end