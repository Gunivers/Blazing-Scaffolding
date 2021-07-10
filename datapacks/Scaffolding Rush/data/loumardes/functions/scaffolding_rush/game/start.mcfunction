scoreboard players set GameRunning global 1
scoreboard players set GameLoading global 0
scoreboard players set LavaCountdown global 0
scoreboard players set @a killed 0

gamemode survival @a[team=!]
#give items
give @a[team=!] scaffolding
give @a[team=blue] blue_concrete_powder{HideFlags:24,CanPlaceOn:["minecraft:scaffolding","#loumardes:notowerlobby"],CanDestroy:["minecraft:scaffolding","#loumardes:lobby","#loumardes:tower"]}
give @a[team=green] lime_concrete_powder{HideFlags:24,CanPlaceOn:["minecraft:scaffolding","#loumardes:notowerlobby"],CanDestroy:["minecraft:scaffolding","#loumardes:lobby","#loumardes:tower"]}
give @a[team=red] red_concrete_powder{HideFlags:24,CanPlaceOn:["minecraft:scaffolding","#loumardes:notowerlobby"],CanDestroy:["minecraft:scaffolding","#loumardes:lobby","#loumardes:tower"]}
give @a[team=yellow] yellow_concrete_powder{HideFlags:24,CanPlaceOn:["minecraft:scaffolding","#loumardes:notowerlobby"],CanDestroy:["minecraft:scaffolding","#loumardes:lobby","#loumardes:tower"]}

execute as @a[team=blue,gamemode=!spectator,sort=random,limit=1] run function loumardes:scaffolding_rush/villager/give/blue
execute as @a[team=red,gamemode=!spectator,sort=random,limit=1] run function loumardes:scaffolding_rush/villager/give/red
execute as @a[team=yellow,gamemode=!spectator,sort=random,limit=1] run function loumardes:scaffolding_rush/villager/give/yellow
execute as @a[team=green,gamemode=!spectator,sort=random,limit=1] run function loumardes:scaffolding_rush/villager/give/green

function loumardes:scaffolding_rush/broadcast/start
