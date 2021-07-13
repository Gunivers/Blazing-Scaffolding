execute store success score Random options if score Random options matches 0

execute if score Random options matches 0 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The random teams has been ","color":"gray"},{"text":"desactivated","color":"red"}]
execute unless score Random options matches 0 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The random teams has been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score Random options matches 0 run function loumardes:scaffolding_rush/lobby/team
execute if score Random options matches 1 run function loumardes:scaffolding_rush/lobby/random

scoreboard players set @a opt_randomteam 0
scoreboard players enable @a opt_randomteam

function loumardes:scaffolding_rush/options/refresh
