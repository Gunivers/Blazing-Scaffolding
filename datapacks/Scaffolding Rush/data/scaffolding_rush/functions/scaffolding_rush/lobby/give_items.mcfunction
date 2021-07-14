clear @s
give @s minecraft:scaffolding
execute if score UseGravel options matches 1.. run loot give @s loot scaffolding_rush:lobby_gravel
execute if score UseSnowball options matches 1.. run give @s minecraft:snowball

function scaffolding_rush:scaffolding_rush/lobby/give_book
