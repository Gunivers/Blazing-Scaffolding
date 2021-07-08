scoreboard players set GameRunning global 1
scoreboard players set GameLoading global 0
scoreboard players set LavaCountdown global 0

gamemode survival @a[team=!]
#give items
give @a[team=!] scaffolding
give @a[team=blue] blue_concrete_powder{CanPlaceOn:["minecraft:scaffolding","#loumardes:lobby"],CanDestroy:["minecraft:scaffolding","#loumardes:lobby","#loumardes:tower"]}
give @a[team=green] lime_concrete_powder{CanPlaceOn:["minecraft:scaffolding","#loumardes:lobby"],CanDestroy:["minecraft:scaffolding","#loumardes:lobby","#loumardes:tower"]}
give @a[team=red] red_concrete_powder{CanPlaceOn:["minecraft:scaffolding","#loumardes:lobby"],CanDestroy:["minecraft:scaffolding","#loumardes:lobby","#loumardes:tower"]}
give @a[team=yellow] yellow_concrete_powder{CanPlaceOn:["minecraft:scaffolding","#loumardes:lobby"],CanDestroy:["minecraft:scaffolding","#loumardes:lobby","#loumardes:tower"]}

function loumardes:scaffolding_rush/villager/give/all

function loumardes:scaffolding_rush/broadcast/start
