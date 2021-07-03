#executed as a player of red team having talked to a villager

execute if entity @e[type=villager,distance=..6, team=red] run function loumardes:scaffolding_rush/villager/give/red
execute as @e[type=villager,distance=..6, team=red] run function loumardes:scaffolding_rush/clean_kill
