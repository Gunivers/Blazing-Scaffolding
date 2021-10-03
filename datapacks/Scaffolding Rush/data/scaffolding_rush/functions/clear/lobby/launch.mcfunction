
#clear the blocks in the lobby

execute unless entity @e[type=marker,name="ScR_ClearLobby"] run summon minecraft:marker 0 270 0 {CustomName: '{"text":"ScR_ClearLobby"}'}
teleport @e[type=marker,name="ScR_ClearLobby",limit=1] 0 270 0

scoreboard players set ClearLobby global 1
execute as @e[type=marker,name="ScR_ClearLobby",limit=1] at @s run function scaffolding_rush:clear/lobby/area
