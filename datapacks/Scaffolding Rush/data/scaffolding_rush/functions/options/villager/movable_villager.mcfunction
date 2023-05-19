
#generated option function

execute store success score MovableVillager options if score MovableVillager options matches 0

execute if score MovableVillager options matches 0 run tellraw @a[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"text":"The movable_villager option has been ","color":"gray"},{"text":"deactivated","color":"red"}]
execute unless score MovableVillager options matches 0 run tellraw @a[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"text":"The movable_villager option has been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score MovableVillager options matches 0 run tellraw @a[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"text":"L'option movable_villager a été ","color":"gray"},{"text":"désactivée","color":"red"}]
execute unless score MovableVillager options matches 0 run tellraw @a[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"text":"L'option movable_villager a été ","color":"gray"},{"text":"activée","color":"green"}]

scoreboard players set @s opt_movable_villager 0
scoreboard players enable @s opt_movable_villager

function scaffolding_rush:options/refresh
