tag @s remove has_egg

execute as @a[gamemode=spectator,team=red] if entity @a[scores={redPlaced=1..}] run function loumardes:scaffolding_rush/villager/player_respawn/red
execute as @a[gamemode=spectator,team=blue] if entity @a[scores={bluePlaced=1..}] run function loumardes:scaffolding_rush/villager/player_respawn/blue
execute as @a[gamemode=spectator,team=yellow] if entity @a[scores={yellowPlaced=1..}] run function loumardes:scaffolding_rush/villager/player_respawn/yellow
execute as @a[gamemode=spectator,team=green] if entity @a[scores={greenPlaced=1..}] run function loumardes:scaffolding_rush/villager/player_respawn/green

scoreboard players set @s bluePlaced 0
scoreboard players set @s greenPlaced 0
scoreboard players set @s redPlaced 0
scoreboard players set @s yellowPlaced 0

execute as @e[type=minecraft:villager] run data merge entity @s {CustomName:""}
