
#clear the blocks in the lobby

bossbar add reset_lobby_en {"text":"Reseting lobby..."}
bossbar add reset_lobby_fr {"text":"Chargement du lobby en cours..."}
bossbar set reset_lobby_en players @a[scores={language=0}]
bossbar set reset_lobby_fr players @a[scores={language=1}]
bossbar set reset_lobby_en max 256
bossbar set reset_lobby_fr max 256
bossbar set reset_lobby_en color purple
bossbar set reset_lobby_fr color purple

execute unless entity @e[type=marker,name="ScR_ClearLobby"] run summon minecraft:marker 0 270 0 {CustomName: '{"text":"ScR_ClearLobby"}'}
teleport @e[type=marker,name="ScR_ClearLobby",limit=1] 0 270 0

scoreboard players set ClearLobby global 1
execute as @e[type=marker,name="ScR_ClearLobby",limit=1] at @s run function scaffolding_rush:clear/lobby/area
