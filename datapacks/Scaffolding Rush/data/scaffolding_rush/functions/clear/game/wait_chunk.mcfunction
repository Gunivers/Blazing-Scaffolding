say summon game @e[type=marker,name="ScR_ClearGame"]

execute unless entity @e[type=marker,name="ScR_ClearGame",limit=1] run schedule function scaffolding_rush:clear/game/wait_chunk 5t
execute as @e[type=marker,name="ScR_ClearGame",limit=1] at @s run schedule function scaffolding_rush:clear/game/area 2t
