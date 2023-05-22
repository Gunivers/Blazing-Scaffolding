
#generated option function

execute store success score UseTimeLimit options if score UseTimeLimit options matches 0

execute if score UseTimeLimit options matches 0 run tellraw @s[scores={language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The use_time_limit option has been ","color":"gray"},{"text":"deactivated","color":"red"}]
execute unless score UseTimeLimit options matches 0 run tellraw @s[scores={language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The use_time_limit option has been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score UseTimeLimit options matches 0 run tellraw @s[scores={language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"L'option use_time_limit a été ","color":"gray"},{"text":"désactivée","color":"red"}]
execute unless score UseTimeLimit options matches 0 run tellraw @s[scores={language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"L'option use_time_limit a été ","color":"gray"},{"text":"activée","color":"green"}]

scoreboard players set @s opt_use_time_limit 0
scoreboard players enable @s opt_use_time_limit

function scaffolding_rush:options/refresh
