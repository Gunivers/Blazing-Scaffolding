
#generated option function

execute store success score Enderpearl options if score Enderpearl options matches 0

execute if score Enderpearl options matches 0 run tellraw @a[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"text":"The enderpearl option has been ","color":"gray"},{"text":"deactivated","color":"red"}]
execute unless score Enderpearl options matches 0 run tellraw @a[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"text":"The enderpearl option has been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score Enderpearl options matches 0 run tellraw @a[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"text":"L'option enderpearl a été ","color":"gray"},{"text":"désactivée","color":"red"}]
execute unless score Enderpearl options matches 0 run tellraw @a[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"text":"L'option enderpearl a été ","color":"gray"},{"text":"activée","color":"green"}]

scoreboard players set @s opt_enderpearl 0
scoreboard players enable @s opt_enderpearl

function scaffolding_rush:options/refresh
