#Function called at the start of the game

clear @a villager_spawn_egg
execute as @a[team=blue,gamemode=!spectator,sort=random,limit=1] run function loumardes:scaffolding_rush/villager/give/blue
execute as @a[team=red,gamemode=!spectator,sort=random,limit=1] run function loumardes:scaffolding_rush/villager/give/red
execute as @a[team=yellow,gamemode=!spectator,sort=random,limit=1] run function loumardes:scaffolding_rush/villager/give/yellow
execute as @a[team=green,gamemode=!spectator,sort=random,limit=1] run function loumardes:scaffolding_rush/villager/give/green
