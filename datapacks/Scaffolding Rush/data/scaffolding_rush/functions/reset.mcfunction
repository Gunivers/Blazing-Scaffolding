
kill @e[type=!player]
scoreboard players reset *
stopsound @a

advancement revoke @a everything

execute as @a at @s run function scaffolding_rush:player/reset
function scaffolding_rush:game/stop/stop

#==============================================================================
# LOAD
#==============================================================================

function scaffolding_rush:__load__
