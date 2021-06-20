#
#executed as a player having talked to a villager

execute if entity @s[team=red] run function loumardes:scaffolding_rush/grab_red_villager
execute if entity @s[team=blue] run function loumardes:scaffolding_rush/grab_blue_villager
execute if entity @s[team=yellow] run function loumardes:scaffolding_rush/grab_yellow_villager
execute if entity @s[team=green] run function loumardes:scaffolding_rush/grab_green_villager

scoreboard players set @s villagerClick 0
