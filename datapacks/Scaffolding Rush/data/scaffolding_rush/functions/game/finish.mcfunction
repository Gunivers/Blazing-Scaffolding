scoreboard players set #game.running data 0
scoreboard players set #game.end data 1
kill @e[tag=Volcano]

execute if score UseTimeLimit options matches 1.. run function scaffolding_rush:game/score_elimination

function scaffolding_rush:broadcast/finish

execute if entity @a[team=blue,tag=!TeamEliminated,limit=1] run scoreboard players add @a[team=blue] Win 1
execute if entity @a[team=green,tag=!TeamEliminated,limit=1] run scoreboard players add @a[team=green] Win 1
execute if entity @a[team=red,tag=!TeamEliminated,limit=1] run scoreboard players add @a[team=red] Win 1
execute if entity @a[team=yellow,tag=!TeamEliminated,limit=1] run scoreboard players add @a[team=yellow] Win 1

execute at @e[type=marker,name="ScR_BuildLimit"] run teleport @e[type=marker,name="ScR_LavaLevel",limit=1] 1000 ~10 1000

execute as @a run function scaffolding_rush:player/item/clear

schedule function scaffolding_rush:reset 100t
schedule function scaffolding_rush:lobby/load 104t

execute if score RandomTeam options matches 1 as @a[team=!] run team join random @s

bossbar set minecraft:filling_lava visible false
bossbar set minecraft:time_limit visible false

function scaffolding_rush:game/lava/global_rising/stop
