# Reset everthing in game

#remove bases markers
kill @e[tag=baseTeam]
kill @e[type=armor_stand,tag=Flag]
kill @e[type=marker,tag=fill]

execute as @e[type=villager] run function utils:clean_kill
function scaffolding_rush:game/lava/global_rising/stop

function scaffolding_rush:clear/game/launch