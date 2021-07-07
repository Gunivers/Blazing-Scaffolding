tag @s remove has_egg

execute as @a[gamemode=spectator,team=red] run function loumardes:scaffolding_rush/respawn/red
execute as @a[gamemode=spectator,team=blue] run function loumardes:scaffolding_rush/respawn/blue
execute as @a[gamemode=spectator,team=yellow] run function loumardes:scaffolding_rush/respawn/yellow
execute as @a[gamemode=spectator,team=green] run function loumardes:scaffolding_rush/respawn/green

scoreboard players set @s villagerPlaced 0
