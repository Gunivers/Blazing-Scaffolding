tag @s remove has_egg

scoreboard players set @s bluePlaced 0
scoreboard players set @s greenPlaced 0
scoreboard players set @s redPlaced 0
scoreboard players set @s yellowPlaced 0

execute at @e[type=minecraft:armor_stand,tag=baseTeam] unless entity @e[type=minecraft:villager,distance=..1] run summon villager ~ ~1 ~ {Invulnerable:1,Silent:1,NoAI:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:999999,ShowParticles:0b}]}

execute as @a[gamemode=spectator,team=red] run function loumardes:scaffolding_rush/villager/player_respawn/red
execute as @a[gamemode=spectator,team=blue] run function loumardes:scaffolding_rush/villager/player_respawn/blue
execute as @a[gamemode=spectator,team=yellow] run function loumardes:scaffolding_rush/villager/player_respawn/yellow
execute as @a[gamemode=spectator,team=green] run function loumardes:scaffolding_rush/villager/player_respawn/green

execute as @a[team=blue] at @e[type=minecraft:villager,team=blue] run spawnpoint @s ~ ~ ~
execute as @a[team=green] at @e[type=minecraft:villager,team=green] run spawnpoint @s ~ ~ ~
execute as @a[team=red] at @e[type=minecraft:villager,team=red] run spawnpoint @s ~ ~ ~
execute as @a[team=yellow] at @e[type=minecraft:villager,team=yellow] run spawnpoint @s ~ ~ ~

execute as @e[type=minecraft:villager] run data merge entity @s {CustomName:""}
