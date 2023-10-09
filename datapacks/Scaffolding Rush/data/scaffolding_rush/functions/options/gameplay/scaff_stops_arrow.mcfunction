
execute store success score ScaffoldingStopsArrow options if score ScaffoldingStopsArrow options matches 0

execute if score ScaffoldingStopsArrow options matches 0 run tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Scaffoldings stops arrow has been ","color":"gray"},{"text":"deactivated","color":"red"}]
execute unless score ScaffoldingStopsArrow options matches 0 run tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Scaffoldings stops arrow has been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score ScaffoldingStopsArrow options matches 0 run tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Flèches stoppées par les échafaudages a été ","color":"gray"},{"text":"désactivé","color":"red"}]
execute unless score ScaffoldingStopsArrow options matches 0 run tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Flèches stoppées par les échafaudages a été ","color":"gray"},{"text":"activé","color":"green"}]

scoreboard players set @s option.scaff_stops_arrow 0
scoreboard players enable @s option.scaff_stops_arrow

function scaffolding_rush:options/refresh
