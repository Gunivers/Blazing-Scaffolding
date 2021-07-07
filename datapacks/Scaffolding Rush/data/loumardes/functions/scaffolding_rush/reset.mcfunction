
execute if score GameRunning global matches 1 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The game has been stopped. Reset is launching..."}]
execute if score GameLoading global matches 1 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The launching of the game has been stopped. Reset is launching..."}]
execute if score GameLoading global matches 0 if score GameRunning global matches 0 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"Reset is launching..."}]

function loumardes:scaffolding_rush/launch_clear
kill @e[tag=lobbyText]
kill @e[tag=baseTeam]
kill @e[type=villager]

schedule clear loumardes:scaffolding_rush/launch_clear
schedule clear loumardes:scaffolding_rush/team/create_base/create
schedule clear loumardes:scaffolding_rush/broadcast/5s
schedule clear loumardes:scaffolding_rush/broadcast/4s
schedule clear loumardes:scaffolding_rush/broadcast/3s
schedule clear loumardes:scaffolding_rush/broadcast/2s
schedule clear loumardes:scaffolding_rush/broadcast/1s
schedule clear loumardes:scaffolding_rush/start_game

scoreboard players set LavaLevel global 1
scoreboard players set GameRunning global 0
scoreboard players set GameLoading global 0

tag @a remove has_egg

gamemode survival @a
clear @a

#advancement replenish
advancement revoke @a from loumardes:replenish

function loumardes:scaffolding_rush/lobby/load_lobby
