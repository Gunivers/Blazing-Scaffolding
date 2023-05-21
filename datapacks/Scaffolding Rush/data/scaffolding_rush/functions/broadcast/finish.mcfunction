
scoreboard players set TeamWin global 0
execute if entity @a[team=blue,tag=!TeamEliminated,limit=1] run scoreboard players add TeamWin global 1
execute if entity @a[team=green,tag=!TeamEliminated,limit=1] run scoreboard players add TeamWin global 1
execute if entity @a[team=red,tag=!TeamEliminated,limit=1] run scoreboard players add TeamWin global 1
execute if entity @a[team=yellow,tag=!TeamEliminated,limit=1] run scoreboard players add TeamWin global 1

title @a times 0 60 20
title @a subtitle {"text":""}

execute if score TeamWin global matches 1 run function scaffolding_rush:broadcast/finish/1_team
execute if score TeamWin global matches 2 run function scaffolding_rush:broadcast/finish/2_teams
execute if score TeamWin global matches 3 run function scaffolding_rush:broadcast/finish/3_teams
execute if score TeamWin global matches 4 run function scaffolding_rush:broadcast/finish/4_teams


execute if score TeamWin global matches 0 unless entity @a[tag=!TeamEliminated] run title @a[scores={language=0}] title ["",{"text":"No team won!"}]
execute if score TeamWin global matches 0 unless entity @a[tag=!TeamEliminated] run tellraw @a[scores={language=0}] ["",{"text":"====================================","color":"dark_gray"},{"text":"\n\n"},{"text":"[BS] ","color":"gold"},{"text":"No team won!","color":"gray"},{"text":"\n\n"},{"text":"====================================","color":"dark_gray"}]

execute if score TeamWin global matches 0 unless entity @a[tag=!TeamEliminated] run title @a[scores={language=1}] title ["",{"text":"Aucune équipe n'a gagnée !"}]
execute if score TeamWin global matches 0 unless entity @a[tag=!TeamEliminated] run tellraw @a[scores={language=1}] ["",{"text":"====================================","color":"dark_gray"},{"text":"\n\n"},{"text":"[BS] ","color":"gold"},{"text":"Aucune équipe n'a gagnée !","color":"gray"},{"text":"\n\n"},{"text":"====================================","color":"dark_gray"}]
