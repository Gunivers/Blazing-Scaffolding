clear @s

execute run give @s minecraft:scaffolding{HideFlags: 24, CanPlaceOn: ["minecraft:scaffolding", "#scaffolding_rush:notowerlobby", "#scaffolding_rush:tower"], CanDestroy: ["minecraft:scaffolding", "#scaffolding_rush:clear_lobby"]} 42
execute if score UseSand options matches 1.. run loot give @s loot scaffolding_rush:sand
execute if score UseSnowball options matches 1.. run give @s minecraft:snowball{HideFlags: 24, CanDestroy: ["minecraft:scaffolding", "#scaffolding_rush:clear_lobby"]} 1

#function scaffolding_rush:lobby/give_book
