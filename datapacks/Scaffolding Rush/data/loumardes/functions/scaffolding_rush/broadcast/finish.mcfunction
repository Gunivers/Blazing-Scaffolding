
title @a times 0 60 20

execute if entity @a[team=blue,gamemode=!spectator,limit=1] run title @a title ["",{"text":"Team "},{"text":"blue","color":"blue"},{"text":" wins !"}]
execute if entity @a[team=blue,gamemode=!spectator,limit=1] run tellraw @a ["",{"text":"====================================","color":"dark_gray"},{"text":"\n\n"},{"text":"[SR] ","color":"gold"},{"text":"Team ","color":"gray"},{"text":"blue","color":"blue"},{"text":" wins !","color":"gray"},{"text":"\n\n"},{"text":"====================================","color":"dark_gray"}]

execute if entity @a[team=green,gamemode=!spectator,limit=1] run title @a title ["",{"text":"Team "},{"text":"green","color":"green"},{"text":" wins !"}]
execute if entity @a[team=green,gamemode=!spectator,limit=1] run tellraw @a ["",{"text":"====================================","color":"dark_gray"},{"text":"\n\n"},{"text":"[SR] ","color":"gold"},{"text":"Team ","color":"gray"},{"text":"green","color":"green"},{"text":" wins !","color":"gray"},{"text":"\n\n"},{"text":"====================================","color":"dark_gray"}]

execute if entity @a[team=red,gamemode=!spectator,limit=1] run title @a title ["",{"text":"Team "},{"text":"red","color":"red"},{"text":" wins !"}]
execute if entity @a[team=red,gamemode=!spectator,limit=1] run tellraw @a ["",{"text":"====================================","color":"dark_gray"},{"text":"\n\n"},{"text":"[SR] ","color":"gold"},{"text":"Team ","color":"gray"},{"text":"red","color":"red"},{"text":" wins !","color":"gray"},{"text":"\n\n"},{"text":"====================================","color":"dark_gray"}]

execute if entity @a[team=yellow,gamemode=!spectator,limit=1] run title @a title ["",{"text":"Team "},{"text":"yellow","color":"yellow"},{"text":" wins !"}]
execute if entity @a[team=yellow,gamemode=!spectator,limit=1] run tellraw @a ["",{"text":"====================================","color":"dark_gray"},{"text":"\n\n"},{"text":"[SR] ","color":"gold"},{"text":"Team ","color":"gray"},{"text":"yellow","color":"yellow"},{"text":" win !","color":"gray"},{"text":"\n\n"},{"text":"====================================","color":"dark_gray"}]

execute unless entity @a[gamemode=!spectator] run title @a title ["",{"text":"No team won !"}]
execute unless entity @a[gamemode=!spectator] run tellraw @a ["",{"text":"====================================","color":"dark_gray"},{"text":"\n\n"},{"text":"[SR] ","color":"gold"},{"text":"No team won !","color":"gray"},{"text":"\n\n"},{"text":"====================================","color":"dark_gray"}]
