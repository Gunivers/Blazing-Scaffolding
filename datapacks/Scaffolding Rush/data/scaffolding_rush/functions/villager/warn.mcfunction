execute as @e[type=villager] store result score @s YEntity run data get entity @s Pos[1]
execute as @e[type=villager] run scoreboard players operation @s YEntity -= LavaLevel global

execute if entity @e[type=villager,team=blue] run title @a[scores={language=0},team=blue] actionbar ["",{"text":"Your Villager is "},{"score":{"name":"@e[type=villager,team=blue,limit=1]","objective":"YEntity"}},{"text":" blocks above lava"}]
execute if entity @e[type=villager,team=red] run title @a[scores={language=0},team=red] actionbar ["",{"text":"Your Villager is "},{"score":{"name":"@e[type=villager,team=red,limit=1]","objective":"YEntity"}},{"text":" blocks above lava"}]
execute if entity @e[type=villager,team=yellow] run title @a[scores={language=0},team=yellow] actionbar ["",{"text":"Your Villager is "},{"score":{"name":"@e[type=villager,team=yellow,limit=1]","objective":"YEntity"}},{"text":" blocks above lava"}]
execute if entity @e[type=villager,team=green] run title @a[scores={language=0},team=green] actionbar ["",{"text":"Your Villager is "},{"score":{"name":"@e[type=villager,team=green,limit=1]","objective":"YEntity"}},{"text":" blocks above lava"}]

execute if entity @e[type=villager,team=blue] run title @a[scores={language=1},team=blue] actionbar ["",{"text":"Votre Villageois est "},{"score":{"name":"@e[type=villager,team=blue,limit=1]","objective":"YEntity"}},{"text":" bloc·s au dessus de la lave"}]
execute if entity @e[type=villager,team=red] run title @a[scores={language=1},team=red] actionbar ["",{"text":"Votre Villageois est "},{"score":{"name":"@e[type=villager,team=red,limit=1]","objective":"YEntity"}},{"text":" bloc·s au dessus de la lave"}]
execute if entity @e[type=villager,team=yellow] run title @a[scores={language=1},team=yellow] actionbar ["",{"text":"Votre Villageois est "},{"score":{"name":"@e[type=villager,team=yellow,limit=1]","objective":"YEntity"}},{"text":" bloc·s au dessus de la lave"}]
execute if entity @e[type=villager,team=green] run title @a[scores={language=1},team=green] actionbar ["",{"text":"Votre Villageois est "},{"score":{"name":"@e[type=villager,team=green,limit=1]","objective":"YEntity"}},{"text":" bloc·s au dessus de la lave"}]
