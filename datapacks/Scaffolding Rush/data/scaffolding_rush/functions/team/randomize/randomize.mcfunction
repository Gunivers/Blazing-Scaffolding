playsound minecraft:ui.button.click ambient @a[distance=..30] ~ ~ ~ 0.5 1

clear @a #scaffolding_rush:colored_items
team leave @a[team=!spectator]

function scaffolding_rush:team/randomize/loop

tellraw @a[team=blue,scores={option_language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Teams randomized! Your new teammates are: ","color":"gray"},{"selector":"@a[team=blue]","color":"blue"}]
tellraw @a[team=blue,scores={option_language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Equipes mélangées ! Vos nouveaux coéquipiers sont:","color":"gray"},{"selector":"@a[team=blue]","color":"blue"}]

tellraw @a[team=red,scores={option_language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Teams randomized! Your new teammates are: ","color":"gray"},{"selector":"@a[team=red]","color":"red"}]
tellraw @a[team=red,scores={option_language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Equipes mélangées ! Vos nouveaux coéquipiers sont:","color":"gray"},{"selector":"@a[team=red]","color":"red"}]

tellraw @a[team=green,scores={option_language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Teams randomized! Your new teammates are: ","color":"gray"},{"selector":"@a[team=green]","color":"green"}]
tellraw @a[team=green,scores={option_language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Equipes mélangées ! Vos nouveaux coéquipiers sont:","color":"gray"},{"selector":"@a[team=green]","color":"green"}]

tellraw @a[team=yellow,scores={option_language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Teams randomized! Your new teammates are: ","color":"gray"},{"selector":"@a[team=yellow]","color":"yellow"}]
tellraw @a[team=yellow,scores={option_language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Equipes mélangées ! Vos nouveaux coéquipiers sont:","color":"gray"},{"selector":"@a[team=yellow]","color":"yellow"}]
