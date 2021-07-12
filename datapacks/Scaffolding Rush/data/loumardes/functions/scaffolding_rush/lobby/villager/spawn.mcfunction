summon villager 0 0 0 {Invulnerable:1,Silent:1,NoAI:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:999999,ShowParticles:0b}]}
execute at @e[type=minecraft:armor_stand,tag=baseTeam] unless entity @e[type=minecraft:villager,distance=..1] run tp @e[type=minecraft:villager,team=] ~ ~ ~
execute as @e[type=minecraft:villager,team=] at @s if entity @e[type=minecraft:armor_stand,tag=baseTeam,distance=..1,team=blue] run team join blue @s
execute as @e[type=minecraft:villager,team=] at @s if entity @e[type=minecraft:armor_stand,tag=baseTeam,distance=..1,team=green] run team join green @s
execute as @e[type=minecraft:villager,team=] at @s if entity @e[type=minecraft:armor_stand,tag=baseTeam,distance=..1,team=red] run team join red @s
execute as @e[type=minecraft:villager,team=] at @s if entity @e[type=minecraft:armor_stand,tag=baseTeam,distance=..1,team=yellow] run team join yellow @s
