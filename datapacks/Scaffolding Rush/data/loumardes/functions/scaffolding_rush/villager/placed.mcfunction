tag @s remove has_egg

execute as @a[gamemode=spectator,team=red] if entity @a[scores={redPlaced=1..}] run function loumardes:scaffolding_rush/villager/player_respawn/red
execute as @a[gamemode=spectator,team=blue] if entity @a[scores={bluePlaced=1..}] run function loumardes:scaffolding_rush/villager/player_respawn/blue
execute as @a[gamemode=spectator,team=yellow] if entity @a[scores={yellowPlaced=1..}] run function loumardes:scaffolding_rush/villager/player_respawn/yellow
execute as @a[gamemode=spectator,team=green] if entity @a[scores={greenPlaced=1..}] run function loumardes:scaffolding_rush/villager/player_respawn/green

execute if score GameLobby global matches 1 run function loumardes:scaffolding_rush/lobby/villager/spawn

scoreboard players set @e[type=minecraft:villager] killed 0

scoreboard players set @s bluePlaced 0
scoreboard players set @s greenPlaced 0
scoreboard players set @s redPlaced 0
scoreboard players set @s yellowPlaced 0

execute as @e[type=minecraft:villager] run data merge entity @s {CustomName:""}

#Recup delay
tag @s add VillagerRecup
schedule function loumardes:scaffolding_rush/villager/give/recup_delay 5t
