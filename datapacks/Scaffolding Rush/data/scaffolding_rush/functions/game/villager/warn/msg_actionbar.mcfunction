
title @s times 0 2 0

execute if entity @e[type=villager,tag=game.villager,tag=blue_villager,scores={pos.y=2..}] run title @s[scores={option.language=0},team=blue] actionbar ["",{"text":"Your Villager is ","color":"gray"},{"score":{"name":"@e[type=villager,tag=game.villager,tag=blue_villager,limit=1]","objective":"pos.y"},"color":"white"},{"text":" blocks above lava","color":"gray"}]
execute if entity @e[type=villager,tag=game.villager,tag=red_villager,scores={pos.y=2..}] run title @s[scores={option.language=0},team=red] actionbar ["",{"text":"Your Villager is ","color":"gray"},{"score":{"name":"@e[type=villager,tag=game.villager,tag=red_villager,limit=1]","objective":"pos.y"},"color":"white"},{"text":" blocks above lava","color":"gray"}]
execute if entity @e[type=villager,tag=game.villager,tag=yellow_villager,scores={pos.y=2..}] run title @s[scores={option.language=0},team=yellow] actionbar ["",{"text":"Your Villager is ","color":"gray"},{"score":{"name":"@e[type=villager,tag=game.villager,tag=yellow_villager,limit=1]","objective":"pos.y"},"color":"white"},{"text":" blocks above lava","color":"gray"}]
execute if entity @e[type=villager,tag=game.villager,tag=green_villager,scores={pos.y=2..}] run title @s[scores={option.language=0},team=green] actionbar ["",{"text":"Your Villager is ","color":"gray"},{"score":{"name":"@e[type=villager,tag=game.villager,tag=green_villager,limit=1]","objective":"pos.y"},"color":"white"},{"text":" blocks above lava","color":"gray"}]

execute if entity @e[type=villager,tag=game.villager,tag=blue_villager,scores={pos.y=2..}] run title @s[scores={option.language=1},team=blue] actionbar ["",{"text":"Votre Villageois est ","color":"gray"},{"score":{"name":"@e[type=villager,tag=game.villager,tag=blue_villager,limit=1]","objective":"pos.y"},"color":"white"},{"text":" bloc·s au dessus de la lave","color":"gray"}]
execute if entity @e[type=villager,tag=game.villager,tag=red_villager,scores={pos.y=2..}] run title @s[scores={option.language=1},team=red] actionbar ["",{"text":"Votre Villageois est ","color":"gray"},{"score":{"name":"@e[type=villager,tag=game.villager,tag=red_villager,limit=1]","objective":"pos.y"},"color":"white"},{"text":" bloc·s au dessus de la lave","color":"gray"}]
execute if entity @e[type=villager,tag=game.villager,tag=yellow_villager,scores={pos.y=2..}] run title @s[scores={option.language=1},team=yellow] actionbar ["",{"text":"Votre Villageois est ","color":"gray"},{"score":{"name":"@e[type=villager,tag=game.villager,tag=yellow_villager,limit=1]","objective":"pos.y"},"color":"white"},{"text":" bloc·s au dessus de la lave","color":"gray"}]
execute if entity @e[type=villager,tag=game.villager,tag=green_villager,scores={pos.y=2..}] run title @s[scores={option.language=1},team=green] actionbar ["",{"text":"Votre Villageois est ","color":"gray"},{"score":{"name":"@e[type=villager,tag=game.villager,tag=green_villager,limit=1]","objective":"pos.y"},"color":"white"},{"text":" bloc·s au dessus de la lave","color":"gray"}]

# In Red

execute if entity @e[type=villager,tag=game.villager,tag=blue_villager,scores={pos.y=..1}] run title @s[scores={option.language=0},team=blue] actionbar ["",{"text":"Your Villager is ","color":"dark_red"},{"score":{"name":"@e[type=villager,tag=game.villager,tag=blue_villager,limit=1]","objective":"pos.y"},"color":"red"},{"text":" block above lava","color":"dark_red"}]
execute if entity @e[type=villager,tag=game.villager,tag=red_villager,scores={pos.y=..1}] run title @s[scores={option.language=0},team=red] actionbar ["",{"text":"Your Villager is ","color":"dark_red"},{"score":{"name":"@e[type=villager,tag=game.villager,tag=red_villager,limit=1]","objective":"pos.y"},"color":"red"},{"text":" block above lava","color":"dark_red"}]
execute if entity @e[type=villager,tag=game.villager,tag=yellow_villager,scores={pos.y=..1}] run title @s[scores={option.language=0},team=yellow] actionbar ["",{"text":"Your Villager is ","color":"dark_red"},{"score":{"name":"@e[type=villager,tag=game.villager,tag=yellow_villager,limit=1]","objective":"pos.y"},"color":"red"},{"text":" block above lava","color":"dark_red"}]
execute if entity @e[type=villager,tag=game.villager,tag=green_villager,scores={pos.y=..1}] run title @s[scores={option.language=0},team=green] actionbar ["",{"text":"Your Villager is ","color":"dark_red"},{"score":{"name":"@e[type=villager,tag=game.villager,tag=green_villager,limit=1]","objective":"pos.y"},"color":"red"},{"text":" block above lava","color":"dark_red"}]

execute if entity @e[type=villager,tag=game.villager,tag=blue_villager,scores={pos.y=..1}] run title @s[scores={option.language=1},team=blue] actionbar ["",{"text":"Votre Villageois est ","color":"dark_red"},{"score":{"name":"@e[type=villager,tag=game.villager,tag=blue_villager,limit=1]","objective":"pos.y"},"color":"red"},{"text":" bloc au dessus de la lave","color":"dark_red"}]
execute if entity @e[type=villager,tag=game.villager,tag=red_villager,scores={pos.y=..1}] run title @s[scores={option.language=1},team=red] actionbar ["",{"text":"Votre Villageois est ","color":"dark_red"},{"score":{"name":"@e[type=villager,tag=game.villager,tag=red_villager,limit=1]","objective":"pos.y"},"color":"red"},{"text":" bloc au dessus de la lave","color":"dark_red"}]
execute if entity @e[type=villager,tag=game.villager,tag=yellow_villager,scores={pos.y=..1}] run title @s[scores={option.language=1},team=yellow] actionbar ["",{"text":"Votre Villageois est ","color":"dark_red"},{"score":{"name":"@e[type=villager,tag=game.villager,tag=yellow_villager,limit=1]","objective":"pos.y"},"color":"red"},{"text":" bloc au dessus de la lave","color":"dark_red"}]
execute if entity @e[type=villager,tag=game.villager,tag=green_villager,scores={pos.y=..1}] run title @s[scores={option.language=1},team=green] actionbar ["",{"text":"Votre Villageois est ","color":"dark_red"},{"score":{"name":"@e[type=villager,tag=game.villager,tag=green_villager,limit=1]","objective":"pos.y"},"color":"red"},{"text":" bloc au dessus de la lave","color":"gray"}]
