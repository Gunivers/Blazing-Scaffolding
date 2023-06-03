
# In red

title @s times 0 2 5
title @s subtitle ""

execute if entity @e[type=villager,tag=game_villager,tag=blue_villager,scores={YEntity=..1}] run title @s[scores={language=0},team=blue] subtitle ["",{"text":"Your Villager is ","color":"dark_red"},{"score":{"name":"@e[type=villager,tag=game_villager,tag=blue_villager,limit=1]","objective":"YEntity"},"color":"red"},{"text":" block above lava","color":"dark_red"}]
execute if entity @e[type=villager,tag=game_villager,tag=red_villager,scores={YEntity=..1}] run title @s[scores={language=0},team=red] subtitle ["",{"text":"Your Villager is ","color":"dark_red"},{"score":{"name":"@e[type=villager,tag=game_villager,tag=red_villager,limit=1]","objective":"YEntity"},"color":"red"},{"text":" block above lava","color":"dark_red"}]
execute if entity @e[type=villager,tag=game_villager,tag=yellow_villager,scores={YEntity=..1}] run title @s[scores={language=0},team=yellow] subtitle ["",{"text":"Your Villager is ","color":"dark_red"},{"score":{"name":"@e[type=villager,tag=game_villager,tag=yellow_villager,limit=1]","objective":"YEntity"},"color":"red"},{"text":" block above lava","color":"dark_red"}]
execute if entity @e[type=villager,tag=game_villager,tag=green_villager,scores={YEntity=..1}] run title @s[scores={language=0},team=green] subtitle ["",{"text":"Your Villager is ","color":"dark_red"},{"score":{"name":"@e[type=villager,tag=game_villager,tag=green_villager,limit=1]","objective":"YEntity"},"color":"red"},{"text":" block above lava","color":"dark_red"}]

execute if entity @e[type=villager,tag=game_villager,tag=blue_villager,scores={YEntity=..1}] run title @s[scores={language=1},team=blue] subtitle ["",{"text":"Votre Villageois est ","color":"dark_red"},{"score":{"name":"@e[type=villager,tag=game_villager,tag=blue_villager,limit=1]","objective":"YEntity"},"color":"red"},{"text":" bloc au dessus de la lave","color":"dark_red"}]
execute if entity @e[type=villager,tag=game_villager,tag=red_villager,scores={YEntity=..1}] run title @s[scores={language=1},team=red] subtitle ["",{"text":"Votre Villageois est ","color":"dark_red"},{"score":{"name":"@e[type=villager,tag=game_villager,tag=red_villager,limit=1]","objective":"YEntity"},"color":"red"},{"text":" bloc au dessus de la lave","color":"dark_red"}]
execute if entity @e[type=villager,tag=game_villager,tag=yellow_villager,scores={YEntity=..1}] run title @s[scores={language=1},team=yellow] subtitle ["",{"text":"Votre Villageois est ","color":"dark_red"},{"score":{"name":"@e[type=villager,tag=game_villager,tag=yellow_villager,limit=1]","objective":"YEntity"},"color":"red"},{"text":" bloc au dessus de la lave","color":"dark_red"}]
execute if entity @e[type=villager,tag=game_villager,tag=green_villager,scores={YEntity=..1}] run title @s[scores={language=1},team=green] subtitle ["",{"text":"Votre Villageois est ","color":"dark_red"},{"score":{"name":"@e[type=villager,tag=game_villager,tag=green_villager,limit=1]","objective":"YEntity"},"color":"red"},{"text":" bloc au dessus de la lave","color":"gray"}]

execute if entity @e[type=villager,tag=game_villager,tag=blue_villager,scores={YEntity=..1}] run title @s[team=blue] title {"text":""}
execute if entity @e[type=villager,tag=game_villager,tag=red_villager,scores={YEntity=..1}] run title @s[team=red] title {"text":""}
execute if entity @e[type=villager,tag=game_villager,tag=yellow_villager,scores={YEntity=..1}] run title @s[team=yellow] title {"text":""}
execute if entity @e[type=villager,tag=game_villager,tag=green_villager,scores={YEntity=..1}] run title @s[team=green] title {"text":""}
