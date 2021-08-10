execute as @s if entity @a[tag=admin] run function scaffolding_rush:options/disable_all

execute unless score @s gameId matches 0.. run function scaffolding_rush:join/new_player

execute if score GameLobby global matches 1 run function scaffolding_rush:join/lobby

execute if score GameRunning global matches 1 run function scaffolding_rush:join/game
execute if score GameLoading global matches 1 run function scaffolding_rush:join/game
execute if score GameEnd global matches 1 run function scaffolding_rush:join/game

scoreboard players operation @s gameId = GameId global
