clear @a
give @s minecraft:scaffolding
execute if score UseGravel options matches 1.. run loot give @s loot loumardes:lobby_gravel
execute if score UseSnowball options matches 1.. run give @s minecraft:snowball

function loumardes:scaffolding_rush/lobby/give_book
