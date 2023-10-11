execute store success score #admin.exist options if score #admin.exist options matches 0
execute as @a[tag=!admin,scores={option.admin=1}] if score #admin.exist options matches 0 run scoreboard players set #admin.exist options 2

# execute if score #admin.exist options matches 1 run tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The option book is ","color":"gray"},{"text":"closed","color":"red"}]
# execute if score #admin.exist options matches 0 run tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The option book is ","color":"gray"},{"text":"open","color":"green"}]
execute if score #admin.exist options matches 1.. run tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"selector":"@a[scores={option.admin=1}]","color":"gold"},{"text":" is now the administrator","color":"gray"}]

# execute if score #admin.exist options matches 1 run tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Le livre d'option est ","color":"gray"},{"text":"fermé","color":"red"}]
# execute if score #admin.exist options matches 0 run tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Le livre d'option est ","color":"gray"},{"text":"ouvert","color":"green"}]
execute if score #admin.exist options matches 1.. run tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"selector":"@a[scores={option.admin=1}]","color":"gold"},{"text":" est maintenant l'administrateur de partie","color":"gray"}]


execute if score #admin.exist options matches 1.. run scoreboard players set #admin.exist options 1

tag @a remove admin
execute if score #admin.exist options matches 1 run tag @a[scores={option.admin=1}] add admin

scoreboard players set @a option.admin 0
execute as @a run function scaffolding_rush:options/disable_all
execute if score #lobby.active data matches 1 if score #admin.exist options matches 1 as @a[tag=admin] run function scaffolding_rush:options/activate_all
execute if score #lobby.active data matches 1 if score #admin.exist options matches 0 as @a run function scaffolding_rush:options/activate_all
execute if score #lobby.active data matches 1 run scoreboard players enable @a option.admin
execute if score #lobby.active data matches 1 run scoreboard players enable @a option.language
execute if score #lobby.active data matches 0 if score #admin.exist options matches 1 as @a[tag=admin] run scoreboard players enable @s reset
execute if score #lobby.active data matches 0 if score #admin.exist options matches 0 run scoreboard players enable @a reset

execute if score #lobby.active data matches 1 run function scaffolding_rush:options/refresh
