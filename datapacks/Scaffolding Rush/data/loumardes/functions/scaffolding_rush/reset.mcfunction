execute if score GameRunning global matches 1 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The game has been stopped. Reset in progress..."}]
execute if score GameLoading global matches 1 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The launching of the game has been stopped. Reset in progress..."}]
execute if score GameLoading global matches 0 if score GameRunning global matches 0 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"Reset in progress..."}]

function loumardes:scaffolding_rush/clear/launch
kill @e[tag=lobbyText]
kill @e[tag=baseTeam]
execute as @e[type=villager] run function loumardes:scaffolding_rush/clean_kill

schedule clear loumardes:scaffolding_rush/clear/launch
schedule clear loumardes:scaffolding_rush/team/create_base/create
schedule clear loumardes:scaffolding_rush/broadcast/5s
schedule clear loumardes:scaffolding_rush/broadcast/4s
schedule clear loumardes:scaffolding_rush/broadcast/3s
schedule clear loumardes:scaffolding_rush/broadcast/2s
schedule clear loumardes:scaffolding_rush/broadcast/1s
schedule clear loumardes:scaffolding_rush/game/start

scoreboard players set LavaLevel global 2
scoreboard players set GameLobby global 1
scoreboard players set GameEnd global 0
scoreboard players set GameRunning global 0
scoreboard players set GameLoading global 0

function loumardes:scaffolding_rush/options/activate_all

tag @a remove has_egg

gamemode survival @a
clear @a

spawnpoint @s 0 4 0

#advancement replenish
advancement revoke @a from loumardes:replenish

function loumardes:scaffolding_rush/lobby/load_lobby
