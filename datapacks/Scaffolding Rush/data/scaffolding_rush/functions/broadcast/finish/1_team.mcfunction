execute if entity @a[team=blue,tag=!TeamEliminated,limit=1] run title @a[scores={language=0}] title ["",{"text":"Team "},{"text":"Blue","color":"blue"},{"text":" wins!"}]
execute if entity @a[team=blue,tag=!TeamEliminated,limit=1] run tellraw @a[scores={language=0}] ["",{"text":"====================================","color":"dark_gray"},{"text":"\n\n"},{"text":"[SR] ","color":"gold"},{"text":"Team ","color":"gray"},{"text":"Blue","color":"blue"},{"text":" wins!","color":"gray"},{"text":"\n\n"},{"text":"====================================","color":"dark_gray"}]

execute if entity @a[team=green,tag=!TeamEliminated,limit=1] run title @a[scores={language=0}] title ["",{"text":"Team "},{"text":"Green","color":"green"},{"text":" wins!"}]
execute if entity @a[team=green,tag=!TeamEliminated,limit=1] run tellraw @a[scores={language=0}] ["",{"text":"====================================","color":"dark_gray"},{"text":"\n\n"},{"text":"[SR] ","color":"gold"},{"text":"Team ","color":"gray"},{"text":"Green","color":"green"},{"text":" wins!","color":"gray"},{"text":"\n\n"},{"text":"====================================","color":"dark_gray"}]

execute if entity @a[team=red,tag=!TeamEliminated,limit=1] run title @a[scores={language=0}] title ["",{"text":"Team "},{"text":"Red","color":"red"},{"text":" wins!"}]
execute if entity @a[team=red,tag=!TeamEliminated,limit=1] run tellraw @a[scores={language=0}] ["",{"text":"====================================","color":"dark_gray"},{"text":"\n\n"},{"text":"[SR] ","color":"gold"},{"text":"Team ","color":"gray"},{"text":"Red","color":"red"},{"text":" wins!","color":"gray"},{"text":"\n\n"},{"text":"====================================","color":"dark_gray"}]

execute if entity @a[team=yellow,tag=!TeamEliminated,limit=1] run title @a[scores={language=0}] title ["",{"text":"Team "},{"text":"Yellow","color":"yellow"},{"text":" wins!"}]
execute if entity @a[team=yellow,tag=!TeamEliminated,limit=1] run tellraw @a[scores={language=0}] ["",{"text":"====================================","color":"dark_gray"},{"text":"\n\n"},{"text":"[SR] ","color":"gold"},{"text":"Team ","color":"gray"},{"text":"Yellow","color":"yellow"},{"text":" win!","color":"gray"},{"text":"\n\n"},{"text":"====================================","color":"dark_gray"}]



execute if entity @a[team=blue,tag=!TeamEliminated,limit=1] run title @a[scores={language=1}] title ["",{"text":"L'équipe "},{"text":"Bleue","color":"blue"},{"text":" a gagnée !"}]
execute if entity @a[team=blue,tag=!TeamEliminated,limit=1] run tellraw @a[scores={language=1}] ["",{"text":"====================================","color":"dark_gray"},{"text":"\n\n"},{"text":"[SR] ","color":"gold"},{"text":"L'équipe ","color":"gray"},{"text":"Bleue","color":"blue"},{"text":" a gagnée !","color":"gray"},{"text":"\n\n"},{"text":"====================================","color":"dark_gray"}]

execute if entity @a[team=green,tag=!TeamEliminated,limit=1] run title @a[scores={language=1}] title ["",{"text":"L'équipe "},{"text":"Verte","color":"green"},{"text":" a gagnée !"}]
execute if entity @a[team=green,tag=!TeamEliminated,limit=1] run tellraw @a[scores={language=1}] ["",{"text":"====================================","color":"dark_gray"},{"text":"\n\n"},{"text":"[SR] ","color":"gold"},{"text":"L'équipe ","color":"gray"},{"text":"Vert","color":"green"},{"text":" a gagnée !","color":"gray"},{"text":"\n\n"},{"text":"====================================","color":"dark_gray"}]

execute if entity @a[team=red,tag=!TeamEliminated,limit=1] run title @a[scores={language=1}] title ["",{"text":"L'équipe "},{"text":"Rouge","color":"red"},{"text":" a gagnée !"}]
execute if entity @a[team=red,tag=!TeamEliminated,limit=1] run tellraw @a[scores={language=1}] ["",{"text":"====================================","color":"dark_gray"},{"text":"\n\n"},{"text":"[SR] ","color":"gold"},{"text":"L'équipe ","color":"gray"},{"text":"Rouge","color":"red"},{"text":" a gagnée !","color":"gray"},{"text":"\n\n"},{"text":"====================================","color":"dark_gray"}]

execute if entity @a[team=yellow,tag=!TeamEliminated,limit=1] run title @a[scores={language=1}] title ["",{"text":"L'équipe "},{"text":"Jaune","color":"yellow"},{"text":" a gagnée !"}]
execute if entity @a[team=yellow,tag=!TeamEliminated,limit=1] run tellraw @a[scores={language=1}] ["",{"text":"====================================","color":"dark_gray"},{"text":"\n\n"},{"text":"[SR] ","color":"gold"},{"text":"L'équipe ","color":"gray"},{"text":"Jaune","color":"yellow"},{"text":" a gagnée !","color":"gray"},{"text":"\n\n"},{"text":"====================================","color":"dark_gray"}]

