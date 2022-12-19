give @s scaffolding{HideFlags: 24, CanPlaceOn: ["minecraft:scaffolding", "#scaffolding_rush:notowerlobby", "#scaffolding_rush:lavareplace"], CanDestroy: ["minecraft:scaffolding", "#scaffolding_rush:lobby", "#scaffolding_rush:tower"]}
execute if score UseSand options matches 1 run loot give @s loot scaffolding_rush:sand
execute if score UseSnowball options matches 1 run give @s snowball
