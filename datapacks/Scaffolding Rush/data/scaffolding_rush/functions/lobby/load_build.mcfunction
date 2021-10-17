setblock 0 2 0 minecraft:redstone_block

function scaffolding_rush:lobby/base_egg/clear_egg
scoreboard players set GameLobby global 1

kill @e[tag=lobbyTeam]

execute if score RandomTeam options matches 0 run function scaffolding_rush:lobby/team
execute if score RandomTeam options matches 1 run function scaffolding_rush:lobby/random

execute as @a if score TeamEgg options matches 1 run function scaffolding_rush:lobby/base_egg/reset

schedule clear scaffolding_rush:lobby/particles
function scaffolding_rush:lobby/particles