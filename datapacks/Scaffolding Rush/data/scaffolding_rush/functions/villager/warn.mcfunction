execute as @e[type=villager] store result score @s YEntity run data get entity @s Pos[1]
execute as @e[type=villager] run scoreboard players operation @s YEntity -= LavaLevel global

execute if entity @e[type=villager,tag=blue_villager] run title @a[scores={language=0},team=blue] actionbar ["",{"text":"Your Villager is "},{"score":{"name":"@e[type=villager,tag=blue_villager,limit=1]","objective":"YEntity"}},{"text":" blocks above lava"}]
execute if entity @e[type=villager,tag=red_villager] run title @a[scores={language=0},team=red] actionbar ["",{"text":"Your Villager is "},{"score":{"name":"@e[type=villager,team=red,limit=1]","objective":"YEntity"}},{"text":" blocks above lava"}]
execute if entity @e[type=villager,tag=yellow_villager] run title @a[scores={language=0},team=yellow] actionbar ["",{"text":"Your Villager is "},{"score":{"name":"@e[type=villager,team=yellow,limit=1]","objective":"YEntity"}},{"text":" blocks above lava"}]
execute if entity @e[type=villager,tag=green_villager] run title @a[scores={language=0},team=green] actionbar ["",{"text":"Your Villager is "},{"score":{"name":"@e[type=villager,tag=green_villager,limit=1]","objective":"YEntity"}},{"text":" blocks above lava"}]

execute if entity @e[type=villager,tag=blue_villager] run title @a[scores={language=1},team=blue] actionbar ["",{"text":"Votre Villageois est "},{"score":{"name":"@e[type=villager,tag=blue_villager,limit=1]","objective":"YEntity"}},{"text":" bloc·s au dessus de la lave"}]
execute if entity @e[type=villager,tag=red_villager] run title @a[scores={language=1},team=red] actionbar ["",{"text":"Votre Villageois est "},{"score":{"name":"@e[type=villager,team=red,limit=1]","objective":"YEntity"}},{"text":" bloc·s au dessus de la lave"}]
execute if entity @e[type=villager,tag=yellow_villager] run title @a[scores={language=1},team=yellow] actionbar ["",{"text":"Votre Villageois est "},{"score":{"name":"@e[type=villager,team=yellow,limit=1]","objective":"YEntity"}},{"text":" bloc·s au dessus de la lave"}]
execute if entity @e[type=villager,tag=green_villager] run title @a[scores={language=1},team=green] actionbar ["",{"text":"Votre Villageois est "},{"score":{"name":"@e[type=villager,tag=green_villager,limit=1]","objective":"YEntity"}},{"text":" bloc·s au dessus de la lave"}]
