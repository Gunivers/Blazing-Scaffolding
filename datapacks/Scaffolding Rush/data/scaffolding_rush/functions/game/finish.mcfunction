scoreboard players set GameEnd global 1
scoreboard players set GameRunning global 0

function scaffolding_rush:broadcast/finish

execute at @e[type=marker,name="ScR_BuildLimit"] run teleport @e[type=marker,name="ScR_LavaLevel",limit=1] 1000 ~10 1000

function scaffolding_rush:clear/game
function scaffolding_rush:lobby/load
schedule function scaffolding_rush:reset 3s

execute if score RandomTeam options matches 1 as @a[team=!] run team join random @s

bossbar set minecraft:filling_lava visible false

function scaffolding_rush:lava/global_rising/stop

execute as @a at @s run tp @s ~-1000 ~ ~-1000
worldborder center 0 0
function scaffolding_rush:clear/game