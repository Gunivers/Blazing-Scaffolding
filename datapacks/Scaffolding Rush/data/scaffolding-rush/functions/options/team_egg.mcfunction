
execute store success score TeamEgg options if score TeamEgg options matches 0

execute if score TeamEgg options matches 0 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"Team placement has been ","color":"gray"},{"text":"desactivated","color":"red"}]
execute unless score TeamEgg options matches 0 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"Team placement has been ","color":"gray"},{"text":"activated","color":"green"}]

execute as @a run function loumardes:scaffolding_rush/lobby/base_egg/clear_egg

scoreboard players set @a opt_team_egg 0
scoreboard players enable @a opt_team_egg

function loumardes:scaffolding_rush/options/refresh
