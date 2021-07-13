execute store success score Random options if score Random options matches 0

team leave @a

execute if score Random options matches 0 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"Random teams have been ","color":"gray"},{"text":"desactivated","color":"red"}]
execute unless score Random options matches 0 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"Random teams have been ","color":"gray"},{"text":"activated","color":"green"}]

function loumardes:scaffolding_rush/lobby/load

scoreboard players set @a opt_randomteam 0
scoreboard players enable @a opt_randomteam

function loumardes:scaffolding_rush/options/refresh
