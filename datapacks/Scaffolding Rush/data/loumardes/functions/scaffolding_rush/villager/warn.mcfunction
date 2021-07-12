execute as @e[type=villager] store result score @s YEntity run data get entity @s Pos[1]
execute as @e[type=villager] run scoreboard players operation @s YEntity -= LavaLevel global

execute if entity @e[type=villager,team=blue] run title @a[team=blue] actionbar ["",{"text":"Your villager is "},{"score":{"name":"@e[type=villager,team=blue,limit=1]","objective":"YEntity"}},{"text":" blocks above lava"}]
execute if entity @e[type=villager,team=red] run title @a[team=red] actionbar ["",{"text":"Your villager is "},{"score":{"name":"@e[type=villager,team=red,limit=1]","objective":"YEntity"}},{"text":" blocks above lava"}]
execute if entity @e[type=villager,team=yellow] run title @a[team=yellow] actionbar ["",{"text":"Your villager is "},{"score":{"name":"@e[type=villager,team=yellow,limit=1]","objective":"YEntity"}},{"text":" blocks above lava"}]
execute if entity @e[type=villager,team=green] run title @a[team=green] actionbar ["",{"text":"Your villager is "},{"score":{"name":"@e[type=villager,team=green,limit=1]","objective":"YEntity"}},{"text":" blocks above lava"}]
