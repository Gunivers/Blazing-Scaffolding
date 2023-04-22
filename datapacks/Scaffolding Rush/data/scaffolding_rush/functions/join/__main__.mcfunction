scoreboard players reset @s leave
execute if entity @a[tag=admin] run tag @s remove admin
tag @s remove has_egg
clear @s
tag @a remove HaveItems

function scaffolding_rush:lobby/give_items

execute as @s if entity @a[tag=admin] run function scaffolding_rush:options/disable_all

execute unless score @s gameId matches 0.. run function scaffolding_rush:join/new_player

execute if score GameLobby global matches 1 run function scaffolding_rush:join/lobby

execute if score GameRunning global matches 1 run function scaffolding_rush:join/game
execute if score GameLoading global matches 1 run function scaffolding_rush:join/game
execute if score GameEnd global matches 1 run function scaffolding_rush:join/game

scoreboard players operation @s gameId = GameId global
