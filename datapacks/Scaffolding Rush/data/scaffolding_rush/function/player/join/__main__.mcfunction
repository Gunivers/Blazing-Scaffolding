# Execute as & at joining player
# Called by scaffolding_rush:player/__main__

execute if entity @a[tag=admin] run tag @s remove admin

execute unless score @s game.id matches 0.. run function scaffolding_rush:player/join/first_join
scoreboard players operation @s game.id = #game.id data

execute if score #lobby.active data matches 1 run function scaffolding_rush:player/join/lobby
execute if score #game.running data matches 1 run function scaffolding_rush:player/join/game
execute if score #game.loading data matches 1 run function scaffolding_rush:player/join/game
execute if score #game.end data matches 1 run function scaffolding_rush:player/join/game

scoreboard players set @s listener.leave 0

function scaffolding_rush:player/setup
