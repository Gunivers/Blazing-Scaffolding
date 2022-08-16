execute store success score Villager options if score Villager options matches 0

execute if score Villager options matches 0 run tellraw @a[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"text":"The villager has been ","color":"gray"},{"text":"deactivated","color":"red"}]
execute unless score Villager options matches 0 run tellraw @a[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"text":"The villager has been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score Villager options matches 0 run tellraw @a[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"text":"Le villageois a été ","color":"gray"},{"text":"désactivé","color":"red"}]
execute unless score Villager options matches 0 run tellraw @a[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"text":"Le villageois a été ","color":"gray"},{"text":"activé","color":"green"}]


scoreboard players set @s opt_villager 0
scoreboard players enable @s opt_villager

function scaffolding_rush:options/refresh
