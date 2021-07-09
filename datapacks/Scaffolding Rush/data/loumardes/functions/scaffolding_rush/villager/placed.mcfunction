tag @s remove has_egg

scoreboard players set @s bluePlaced 0
scoreboard players set @s greenPlaced 0
scoreboard players set @s redPlaced 0
scoreboard players set @s yellowPlaced 0

execute at @e[type=minecraft:armor_stand,tag=baseTeam] unless entity @e[type=minecraft:villager,distance=..1] run 

execute as @a[gamemode=spectator,team=red] run function loumardes:scaffolding_rush/villager/player_respawn/red
execute as @a[gamemode=spectator,team=blue] run function loumardes:scaffolding_rush/villager/player_respawn/blue
execute as @a[gamemode=spectator,team=yellow] run function loumardes:scaffolding_rush/villager/player_respawn/yellow
execute as @a[gamemode=spectator,team=green] run function loumardes:scaffolding_rush/villager/player_respawn/green

execute as @e[type=minecraft:villager] run data merge entity @s {CustomName:""}
