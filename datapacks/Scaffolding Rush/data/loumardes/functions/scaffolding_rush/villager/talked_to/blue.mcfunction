execute if score GameRunning global matches 0 as @e[type=!minecraft:player,team=blue] run function loumardes:scaffolding_rush/clean_kill
execute if score GameRunning global matches 1 run function loumardes:scaffolding_rush/villager/give/blue
advancement revoke Laizooo only loumardes:scaffolding_rush/grab_villager/blue
