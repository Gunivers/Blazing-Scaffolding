#
#executed as a player having talked to a villager

execute if entity @s[team=red] run function loumardes:scaffolding_rush/villager/grab/red
execute if entity @s[team=blue] run function loumardes:scaffolding_rush/villager/grab/blue
execute if entity @s[team=yellow] run function loumardes:scaffolding_rush/villager/grab/yellow
execute if entity @s[team=green] run function loumardes:scaffolding_rush/villager/grab/green

scoreboard players set @s villagerClick 0
