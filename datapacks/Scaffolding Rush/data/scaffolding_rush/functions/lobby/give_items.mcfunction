clear @s
execute unless score InteractibleLobby options matches 0 run give @s minecraft:scaffolding{HideFlags: 24, CanPlaceOn: ["minecraft:scaffolding", "#scaffolding_rush:notowerlobby", "#scaffolding_rush:tower"], CanDestroy: ["minecraft:scaffolding", "#scaffolding_rush:lobby", "#scaffolding_rush:tower"]} 42
execute if score InteractibleLobby options matches 0 run give @s minecraft:scaffolding{HideFlags: 24, CanPlaceOn: [], CanDestroy: []} 42

execute unless score InteractibleLobby options matches 0 if score UseGravel options matches 1.. run loot give @s loot scaffolding_rush:lobby_gravel
execute if score InteractibleLobby options matches 0 if score UseGravel options matches 1.. run loot give @s loot scaffolding_rush:lobby_gravel_no_interactions

execute unless score InteractibleLobby options matches 0 if score UseSnowball options matches 1.. run give @s minecraft:snowball{HideFlags: 24, CanDestroy: ["minecraft:scaffolding", "#scaffolding_rush:lobby", "#scaffolding_rush:tower"]} 1
execute if score InteractibleLobby options matches 0 if score UseSnowball options matches 1.. run give @s minecraft:snowball{HideFlags: 24, CanDestroy: []} 1

execute unless score InteractibleLobby options matches 0 run gamemode survival @s
execute if score InteractibleLobby options matches 0 run gamemode adventure @s

function scaffolding_rush:lobby/give_book
