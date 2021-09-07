function scaffolding_rush:reset
teleport @e[type=marker,name="ScR_LavaLevel",limit=1] 0 270 0
function scaffolding_rush:clear/launch
schedule function scaffolding_rush:lobby/load 52t
schedule function scaffolding_rush:broadcast/lobby_loaded 52t