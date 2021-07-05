tag @s remove has_egg

execute if entity @s[team=red] as @a[gamemode=spectator,team=red] run function loumardes:scaffolding_rush/respawn/red
execute if entity @s[team=blue] as @a[gamemode=spectator,team=blue] run function loumardes:scaffolding_rush/respawn/blue
execute if entity @s[team=yellow] as @a[gamemode=spectator,team=yellow] run function loumardes:scaffolding_rush/respawn/yellow
execute if entity @s[team=green] as @a[gamemode=spectator,team=green] run function loumardes:scaffolding_rush/respawn/green


scoreboard players set @s villagerPlaced 0