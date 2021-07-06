
function loumardes:scaffolding_rush/launch_clear
kill @e[tag=lobbyText]
kill @e[tag=baseTeam]

schedule clear loumardes:scaffolding_rush/launch_clear
schedule clear loumardes:scaffolding_rush/team/create_base/create
schedule clear loumardes:scaffolding_rush/broadcast/5s
schedule clear loumardes:scaffolding_rush/broadcast/4s
schedule clear loumardes:scaffolding_rush/broadcast/3s
schedule clear loumardes:scaffolding_rush/broadcast/2s
schedule clear loumardes:scaffolding_rush/broadcast/1s
schedule clear loumardes:scaffolding_rush/start_game

scoreboard players set LavaLevel constant 1
scoreboard players set GameRunning constant 0
scoreboard players set GameLoading constant 0

gamemode survival @a
clear @a

give @a minecraft:scaffolding
give @a minecraft:gravel
