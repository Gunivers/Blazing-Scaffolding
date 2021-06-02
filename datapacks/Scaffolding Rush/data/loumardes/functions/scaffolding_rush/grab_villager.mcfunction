#
#executed as a player having talked to a villager

execute if entity @s[team=red] run function loumardes:scaffolding_rush/grab_red_villager
execute if entity @s[team=blue] run function loumardes:scaffolding_rush/grab_blue_villager

scoreboard players set @s villagerClick 0
