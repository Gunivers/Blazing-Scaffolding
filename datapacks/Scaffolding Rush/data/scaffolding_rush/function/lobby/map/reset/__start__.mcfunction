
kill @e[tag=baseTeam]
execute as @e[type=villager] run function utils:clean_kill

#clear the blocks in the lobby
scoreboard players set #lobby.clear data 1

bossbar add reset_lobby {"translate":"blazing_scaffolding.reseting_lobby"}
bossbar set reset_lobby players @a
bossbar set reset_lobby max 256
bossbar set reset_lobby color purple

kill @e[type=marker,tag=ScR_ClearLobby]
execute unless entity @e[type=marker,tag=ScR_ClearLobby] run summon minecraft:marker 0 319 0 {CustomName: '{"text":"ScR_ClearLobby"}', Tags:["ScR_ClearLobby"]}
teleport @e[type=marker,tag=ScR_ClearLobby,limit=1] 0 319 0
forceload add 0 0 0 0

function scaffolding_rush:lobby/map/reset/wait_chunk
