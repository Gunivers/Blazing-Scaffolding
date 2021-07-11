give @s minecraft:scaffolding
give @s minecraft:gravel{HideFlags:24,CanPlaceOn:["minecraft:scaffolding","#loumardes:notowerlobby"],CanDestroy:["minecraft:scaffolding","#loumardes:lobby","#loumardes:tower"]}
execute if score UseSnowball options matches 1.. run give @s minecraft:snowball

function loumardes:scaffolding_rush/lobby/give_book