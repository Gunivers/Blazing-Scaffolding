
execute store success score Volcano options if score Volcano options matches 0

execute if score Volcano options matches 0 run tellraw @s[scores={language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The volcanoes has been ","color":"gray"},{"text":"deactivated","color":"red"}]
execute unless score Volcano options matches 0 run tellraw @s[scores={language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The volcanoes has been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score Volcano options matches 0 run tellraw @s[scores={language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Les volcans ont été ","color":"gray"},{"text":"désactivés","color":"red"}]
execute unless score Volcano options matches 0 run tellraw @s[scores={language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Les volcans ont été ","color":"gray"},{"text":"activés","color":"green"}]

scoreboard players reset @s opt_volcano
scoreboard players enable @s opt_volcano

function scaffolding_rush:options/refresh
