
execute store success score ScaffoldingStopsArrow options if score ScaffoldingStopsArrow options matches 0

execute if score ScaffoldingStopsArrow options matches 0 run tellraw @s[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"text":"Scaffoldings stops arrow has been ","color":"gray"},{"text":"deactivated","color":"red"}]
execute unless score ScaffoldingStopsArrow options matches 0 run tellraw @s[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"text":"Scaffoldings stops arrow has been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score ScaffoldingStopsArrow options matches 0 run tellraw @s[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"text":"Flèches stoppées par les échafaudages a été ","color":"gray"},{"text":"désactivé","color":"red"}]
execute unless score ScaffoldingStopsArrow options matches 0 run tellraw @s[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"text":"Flèches stoppées par les échafaudages a été ","color":"gray"},{"text":"activé","color":"green"}]

scoreboard players set @s opt_scaff_stops_arrow 0
scoreboard players enable @s opt_scaff_stops_arrow

function scaffolding_rush:options/refresh
