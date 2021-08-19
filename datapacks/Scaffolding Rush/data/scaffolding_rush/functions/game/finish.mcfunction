scoreboard players set GameEnd global 1
scoreboard players set GameRunning global 0

function scaffolding_rush:broadcast/finish

execute at @e[type=marker,name="ScR_BuildLimit"] run teleport @e[type=marker,name="ScR_LavaLevel",limit=1] 0 ~10 0
function scaffolding_rush:clear/launch
schedule function scaffolding_rush:lobby/load 52t

schedule function scaffolding_rush:reset 3s
execute if score RandomTeam options matches 1 as @a[team=!] run team join random @s

bossbar set minecraft:filling_lava visible false
