gamemode survival @s
function loumardes:scaffolding_rush/team/create_base/armor
function loumardes:scaffolding_rush/game/items
give @s[team=!] scaffolding
give @s[team=blue] blue_concrete_powder{HideFlags:24,CanPlaceOn:["minecraft:scaffolding","#loumardes:notowerlobby"],CanDestroy:["minecraft:scaffolding","#loumardes:lobby","#loumardes:tower"]}
give @s[team=green] lime_concrete_powder{HideFlags:24,CanPlaceOn:["minecraft:scaffolding","#loumardes:notowerlobby"],CanDestroy:["minecraft:scaffolding","#loumardes:lobby","#loumardes:tower"]}
give @s[team=red] red_concrete_powder{HideFlags:24,CanPlaceOn:["minecraft:scaffolding","#loumardes:notowerlobby"],CanDestroy:["minecraft:scaffolding","#loumardes:lobby","#loumardes:tower"]}
give @s[team=yellow] yellow_concrete_powder{HideFlags:24,CanPlaceOn:["minecraft:scaffolding","#loumardes:notowerlobby"],CanDestroy:["minecraft:scaffolding","#loumardes:lobby","#loumardes:tower"]}
tag @s remove Respawning
effect clear @s
