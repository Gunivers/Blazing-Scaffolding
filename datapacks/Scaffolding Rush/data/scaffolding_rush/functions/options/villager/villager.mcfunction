execute store success score Villager options if score Villager options matches 0

execute if score Villager options matches 0 run tellraw @s[scores={language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The Villager has been ","color":"gray"},{"text":"deactivated","color":"red"}]
execute unless score Villager options matches 0 run tellraw @s[scores={language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The Villager has been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score Villager options matches 0 run tellraw @s[scores={language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Le Villageois a été ","color":"gray"},{"text":"désactivé","color":"red"}]
execute unless score Villager options matches 0 run tellraw @s[scores={language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Le Villageois a été ","color":"gray"},{"text":"activé","color":"green"}]


scoreboard players set @s opt_villager 0
scoreboard players enable @s opt_villager

function scaffolding_rush:options/refresh
