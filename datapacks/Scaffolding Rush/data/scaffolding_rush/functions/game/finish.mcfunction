scoreboard players set #game.running data 0
scoreboard players set #game.end data 1
kill @e[tag=Volcano]

execute if score UseTimeLimit options matches 1.. run function scaffolding_rush:game/score_elimination

# Finish message --------------------------------------------------------------

scoreboard players set TeamWin data 0
execute if entity @a[team=blue,tag=!TeamEliminated,limit=1] run scoreboard players add TeamWin data 1
execute if entity @a[team=green,tag=!TeamEliminated,limit=1] run scoreboard players add TeamWin data 1
execute if entity @a[team=red,tag=!TeamEliminated,limit=1] run scoreboard players add TeamWin data 1
execute if entity @a[team=yellow,tag=!TeamEliminated,limit=1] run scoreboard players add TeamWin data 1

title @a times 0 60 20
title @a subtitle {"text":""}

execute if score TeamWin data matches 1 run function scaffolding_rush:game/finish_message/1_team
execute if score TeamWin data matches 2 run function scaffolding_rush:game/finish_message/2_teams
execute if score TeamWin data matches 3 run function scaffolding_rush:game/finish_message/3_teams
execute if score TeamWin data matches 4 run function scaffolding_rush:game/finish_message/4_teams


execute if score TeamWin data matches 0 unless entity @a[tag=!TeamEliminated] \
    run title @a[scores={option.language=0}] title ["",{"text":"No team won!"}]
execute if score TeamWin data matches 0 unless entity @a[tag=!TeamEliminated] \
    run tellraw @a[scores={option.language=0}] [ \
        {"text":"====================================\n\n","color":"dark_gray"}, \
        {"text":"[BS] ","color":"gold"}, \
        {"text":"No team won!","color":"gray"}, \
        {"text":"\n\n====================================","color":"dark_gray"} \
    ]

execute if score TeamWin data matches 0 unless entity @a[tag=!TeamEliminated] \
    run title @a[scores={option.language=1}] title ["",{"text":"Aucune équipe n'a gagnée !"}]
execute if score TeamWin data matches 0 unless entity @a[tag=!TeamEliminated] \
    run tellraw @a[scores={option.language=1}] [ \
        {"text":"====================================\n\n","color":"dark_gray"}, \
        {"text":"[BS] ","color":"gold"}, \
        {"text":"Aucune équipe n'a gagnée !","color":"gray"}, \
        {"text":"\n\n====================================","color":"dark_gray"} \
    ]

#--------------------------------------------------------------------------------

execute if entity @a[team=blue,tag=!TeamEliminated,limit=1] run scoreboard players add @a[team=blue] Win 1
execute if entity @a[team=green,tag=!TeamEliminated,limit=1] run scoreboard players add @a[team=green] Win 1
execute if entity @a[team=red,tag=!TeamEliminated,limit=1] run scoreboard players add @a[team=red] Win 1
execute if entity @a[team=yellow,tag=!TeamEliminated,limit=1] run scoreboard players add @a[team=yellow] Win 1

execute at @e[type=marker,name="ScR_BuildLimit"] run teleport @e[type=marker,name="ScR_LavaLevel",limit=1] 1000 ~10 1000

execute as @a run function scaffolding_rush:player/item/clear

schedule function scaffolding_rush:reset 100t
schedule function scaffolding_rush:lobby/map/setup 104t

execute if score RandomTeam options matches 1 as @a[team=!] run team join random @s

bossbar set minecraft:filling_lava visible false
bossbar set minecraft:time_limit visible false

function scaffolding_rush:game/lava/global_rising/stop
