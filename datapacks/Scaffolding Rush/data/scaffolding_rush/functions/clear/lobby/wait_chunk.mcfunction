say summon lobby @e[type=marker,name="ScR_ClearLobby"]

execute unless entity @e[type=marker,name="ScR_ClearLobby",limit=1] run schedule function scaffolding_rush:clear/lobby/wait_chunk 5t
execute as @e[type=marker,name="ScR_ClearLobby",limit=1] at @s run schedule function scaffolding_rush:clear/lobby/area 2t
