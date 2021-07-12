execute if score GameRunning global matches 0 as @e[type=!minecraft:player,team=blue] if entity @a[advancements={loumardes:scaffolding_rush/grab_villager/blue=true}] run function loumardes:scaffolding_rush/clean_kill
execute if score GameRunning global matches 0 as @e[type=!minecraft:player,team=green] if entity @a[advancements={loumardes:scaffolding_rush/grab_villager/green=true}] run function loumardes:scaffolding_rush/clean_kill
execute if score GameRunning global matches 0 as @e[type=!minecraft:player,team=red] if entity @a[advancements={loumardes:scaffolding_rush/grab_villager/red=true}] run function loumardes:scaffolding_rush/clean_kill
execute if score GameRunning global matches 0 as @e[type=!minecraft:player,team=yellow] if entity @a[advancements={loumardes:scaffolding_rush/grab_villager/yellow=true}] run function loumardes:scaffolding_rush/clean_kill
execute if score GameRunning global matches 1 as @s run function loumardes:scaffolding_rush/villager/give/any
