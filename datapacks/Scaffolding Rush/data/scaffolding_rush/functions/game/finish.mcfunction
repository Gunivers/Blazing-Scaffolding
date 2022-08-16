scoreboard players set GameRunning global 0
scoreboard players set GameEnd global 1
kill @e[tag=Volcano]

function scaffolding_rush:broadcast/finish

execute at @e[type=marker,name="ScR_BuildLimit"] run teleport @e[type=marker,name="ScR_LavaLevel",limit=1] 1000 ~10 1000

schedule function scaffolding_rush:reset 60t
schedule function scaffolding_rush:lobby/load 64t

execute if score RandomTeam options matches 1 as @a[team=!] run team join random @s

bossbar set minecraft:filling_lava visible false

function scaffolding_rush:game/lava/global_rising/stop
