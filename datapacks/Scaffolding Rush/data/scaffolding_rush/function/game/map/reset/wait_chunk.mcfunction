
execute unless entity @e[type=marker,name="ScR_ClearGame",limit=1] run schedule function scaffolding_rush:game/map/reset/wait_chunk 5t
execute as @e[type=marker,name="ScR_ClearGame",limit=1] at @s run schedule function scaffolding_rush:game/map/reset/area 2t
