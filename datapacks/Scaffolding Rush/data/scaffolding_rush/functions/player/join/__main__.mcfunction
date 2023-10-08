# Execute as & at joining player
# Called by #scaffolding_rush:__tick__

# Reset player ------------------------------------------------------

execute if entity @a[tag=admin] run tag @s remove admin

execute unless score @s game.id matches 0.. run function scaffolding_rush:player/join/first_join

execute if score #lobby.active data matches 1 run function scaffolding_rush:player/join/lobby

execute if score #game.running data matches 1 run function scaffolding_rush:player/join/game
execute if score #game.loading data matches 1 run function scaffolding_rush:player/join/game
execute if score #game.end data matches 1 run function scaffolding_rush:player/join/game

scoreboard players operation @s game.id = #game.id data
scoreboard players reset @s listener.leave
