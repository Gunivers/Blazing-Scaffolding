execute if entity @s[team=blue,gamemode=!spectator] run function loumardes:scaffolding_rush/villager/give/blue
execute if entity @s[team=red,gamemode=!spectator] run function loumardes:scaffolding_rush/villager/give/red
execute if entity @s[team=yellow,gamemode=!spectator] run function loumardes:scaffolding_rush/villager/give/yellow
execute if entity @s[team=green,gamemode=!spectator] run function loumardes:scaffolding_rush/villager/give/green

scoreboard players set @s villagerClick 0
