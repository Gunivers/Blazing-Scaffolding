#executed as a player of yellow team having talked to a villager

execute if entity @e[type=villager,distance=..6, team=yellow] run function loumardes:scaffolding_rush/villager/give/yellow
execute as @e[type=villager,distance=..6, team=yellow] run function loumardes:scaffolding_rush/clean_kill
