tag @s add villagerSpawned

summon villager 0 0 0 {Tags:["teamBaseVillager","LobbyBase"],Invulnerable: 1, Silent: 1, NoAI: 1, ActiveEffects: [{Id: 14, Amplifier: 0, Duration: 999999, ShowParticles: 0b}]}
execute as @e[type=minecraft:villager,team=] at @s if entity @e[type=minecraft:armor_stand,tag=baseTeam,distance=..1,team=blue] run team join blue @s
tp @e[type=villager,tag=teamBaseVillager,team=] @s

execute if entity @s[team=blue] run team join blue @e[type=villager,tag=teamBaseVillager,team=]
execute if entity @s[team=green] run team join green @e[type=villager,tag=teamBaseVillager,team=]
execute if entity @s[team=red] run team join red @e[type=villager,tag=teamBaseVillager,team=]
execute if entity @s[team=yellow] run team join yellow @e[type=villager,tag=teamBaseVillager,team=]