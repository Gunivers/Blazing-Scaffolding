execute store success score Public options if score Public options matches 0

execute if score Public options matches 0 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The option book is ","color":"gray"},{"text":"closed","color":"red"}]
execute unless score Public options matches 0 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The option book is ","color":"gray"},{"text":"open","color":"green"}]

tag @a remove admin
execute if score Public options matches 0 run tag @a[scores={pt_public=1}] add admin

scoreboard players set @a opt_public 0
scoreboard players enable @a opt_public

function scaffolding_rush:options/refresh
