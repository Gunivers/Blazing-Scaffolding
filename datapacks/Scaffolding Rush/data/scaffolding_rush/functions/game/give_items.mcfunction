give @s scaffolding{HideFlags: 24, CanPlaceOn: ["minecraft:scaffolding", "#scaffolding_rush:notowerlobby", "#scaffolding_rush:tower"], CanDestroy: ["minecraft:scaffolding", "#scaffolding_rush:lobby", "#scaffolding_rush:tower"]}
execute if score UseGravel options matches 1 run loot give @s loot scaffolding_rush:gravel
execute if score UseSnowball options matches 1 run give @s snowball
