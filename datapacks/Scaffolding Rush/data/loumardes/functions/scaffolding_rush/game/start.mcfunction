scoreboard players set GameRunning global 1
scoreboard players set GameLoading global 0
scoreboard players set LavaCountdown global 0
scoreboard players set @a killed 0
clear @a

gamemode survival @a[team=!]
#give items
give @a[team=!] scaffolding
execute if score UseGravel options matches 1 as @a run loot give @s loot loumardes:gravel
execute if score UseSnowball options matches 1 run give @a snowball

execute as @a[team=blue,gamemode=!spectator,sort=random,limit=1] run function loumardes:scaffolding_rush/villager/give/blue
execute as @a[team=red,gamemode=!spectator,sort=random,limit=1] run function loumardes:scaffolding_rush/villager/give/red
execute as @a[team=yellow,gamemode=!spectator,sort=random,limit=1] run function loumardes:scaffolding_rush/villager/give/yellow
execute as @a[team=green,gamemode=!spectator,sort=random,limit=1] run function loumardes:scaffolding_rush/villager/give/green

function loumardes:scaffolding_rush/broadcast/start

function loumardes:scaffolding_rush/lava/sound
