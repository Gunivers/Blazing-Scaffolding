
title @a times 0 60 20

execute if entity @a[team=blue,gamemode=!spectator,limit=1] run title @a title ["",{"text":"Team "},{"text":"blue","color":"blue"},{"text":" wins !"}]
execute if entity @a[team=green,gamemode=!spectator,limit=1] run title @a title ["",{"text":"Team "},{"text":"green","color":"green"},{"text":" wins !"}]
execute if entity @a[team=red,gamemode=!spectator,limit=1] run title @a title ["",{"text":"Team "},{"text":"red","color":"red"},{"text":" wins !"}]
execute if entity @a[team=yellow,gamemode=!spectator,limit=1] run title @a title ["",{"text":"Team "},{"text":"yellow","color":"yellow"},{"text":" wins !"}]
execute unless entity @a[gamemode=survival] run title @a title ["",{"text":"No team won !"}]