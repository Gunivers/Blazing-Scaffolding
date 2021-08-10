execute store success score Admin options if score Admin options matches 0
execute as @a[tag=!admin,scores={opt_admin=1}] if entity @a[tag=admin] run scoreboard players set Admin options 2

tag @a remove admin
execute if score Admin options matches 1.. run tag @a[scores={opt_admin=1}] add admin
execute if score Admin options matches 1.. run clear @a[tag=!admin] minecraft:written_book

execute if score Admin options matches 1 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The option book is ","color":"gray"},{"text":"closed","color":"red"}]
execute if score Admin options matches 0 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The option book is ","color":"gray"},{"text":"open","color":"green"}]
execute if score Admin options matches 1.. run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"selector":"@r","color":"gold"},{"text":"closed","color":"red"}]

scoreboard players set @a opt_admin 0
execute if score Admin options matches 1 as @a[tag=!admin] run function scaffolding_rush:options/disable_all
execute if score Admin options matches 0 run function scaffolding_rush:options/activate_all
scoreboard players enable @a opt_admin

function scaffolding_rush:options/refresh
