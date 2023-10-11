
kill @e[tag=baseTeam]
execute as @e[type=villager] run function utils:clean_kill
execute as @a if score TeamEgg options matches 1 run function scaffolding_rush:lobby/base_egg/reset

#clear the blocks in the lobby
scoreboard players set #lobby.clear data 1

bossbar add reset_lobby_en {"text":"Reseting lobby..."}
bossbar add reset_lobby_fr {"text":"Chargement du lobby en cours..."}
bossbar set reset_lobby_en players @a[scores={option_language=0}]
bossbar set reset_lobby_fr players @a[scores={option_language=1}]
bossbar set reset_lobby_en max 256
bossbar set reset_lobby_fr max 256
bossbar set reset_lobby_en color purple
bossbar set reset_lobby_fr color purple

kill @e[type=marker,name="ScR_ClearLobby"]
execute unless entity @e[type=marker,name="ScR_ClearLobby"] run summon minecraft:marker 0 270 0 {CustomName: '{"text":"ScR_ClearLobby"}'}
teleport @e[type=marker,name="ScR_ClearLobby",limit=1] 0 270 0

function scaffolding_rush:lobby/map/reset/wait_chunk
