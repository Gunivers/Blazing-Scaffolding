#executed as a player of blue team having talked to a villager

execute if entity @e[type=villager,distance=..6, team=blue] run function loumardes:scaffolding_rush/villager/give/blue
execute as @e[type=villager,distance=..6, team=blue] run function loumardes:scaffolding_rush/clean_kill
