
kill @e[type=!player]
scoreboard players reset *

execute as @a at @s run function scaffolding_rush:player/reset
function scaffolding_rush:game/reset

#==============================================================================
# LOAD
#==============================================================================

function scaffolding_rush:__load__
