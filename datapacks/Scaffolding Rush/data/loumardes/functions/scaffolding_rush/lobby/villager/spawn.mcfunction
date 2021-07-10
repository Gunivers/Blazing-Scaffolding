summon villager 0 0 0 {Invulnerable:1,Silent:1,NoAI:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:999999,ShowParticles:0b}]}
execute at @e[type=minecraft:armor_stand,tag=baseTeam] unless entity @e[type=minecraft:villager,distance=..1,tag=OnStand] run tp @e[type=minecraft:villager,tag=!OnStand] ~ ~ ~
execute as @e[type=minecraft:villager,tag=!OnStand] at @s if entity @e[type=minecraft:armor_stand,tag=baseTeam,distance=..1] run tag @s add OnStand
