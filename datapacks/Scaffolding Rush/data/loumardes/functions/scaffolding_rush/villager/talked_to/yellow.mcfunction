execute if score GameRunning global matches 0 as @e[type=!minecraft:player,team=yellow] run function loumardes:scaffolding_rush/clean_kill
execute if score GameRunning global matches 1 as @s run function loumardes:scaffolding_rush/villager/give/any
advancement revoke @s only loumardes:scaffolding_rush/grab_villager/yellow
