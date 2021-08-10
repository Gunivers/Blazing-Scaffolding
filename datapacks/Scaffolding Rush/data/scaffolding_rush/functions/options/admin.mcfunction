execute store success score Admin options if score Admin options matches 0
execute as @a[tag=!admin,scores={opt_admin=1}] if score Admin options matches 0 run scoreboard players set Admin options 2

execute if score Admin options matches 1 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The option book is ","color":"gray"},{"text":"closed","color":"red"}]
execute if score Admin options matches 0 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The option book is ","color":"gray"},{"text":"open","color":"green"}]
execute if score Admin options matches 1.. run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"selector":"@a[scores={opt_admin=1}]","color":"gold"},{"text":" is now the administrator","color":"gray"}]

execute if score Admin options matches 1.. run scoreboard players set Admin options 1

tag @a remove admin
execute if score Admin options matches 1 run tag @a[scores={opt_admin=1}] add admin
execute if score Admin options matches 1 run clear @a[tag=!admin] minecraft:written_book

scoreboard players set @a opt_admin 0
execute as @a run function scaffolding_rush:options/disable_all
execute if score GameLobby global matches 1 if score Admin options matches 1 as @a[tag=admin] run function scaffolding_rush:options/activate_all
execute if score GameLobby global matches 1 if score Admin options matches 0 as @a run function scaffolding_rush:options/activate_all
execute if score GameRunning global matches 1 as @a run function scaffolding_rush:options/disable_all
execute if score GameRunning global matches 1 if score Admin options matches 1 as @a[tag=admin] run scoreboard players enable @s Reset
execute if score GameRunning global matches 1 if score Admin options matches 0 run scoreboard players enable @a Reset

scoreboard players enable @a opt_admin

execute if score GameLobby global matches 1 run function scaffolding_rush:options/refresh
