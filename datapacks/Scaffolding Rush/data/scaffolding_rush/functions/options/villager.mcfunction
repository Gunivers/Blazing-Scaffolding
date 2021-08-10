execute store success score Villager options if score Villager options matches 0

execute if score Villager options matches 0 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The villager has been ","color":"gray"},{"text":"desactivated","color":"red"}]
execute unless score Villager options matches 0 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The villager has been ","color":"gray"},{"text":"activated","color":"green"}]

scoreboard players set @a opt_villager 0
scoreboard players enable @a opt_villager

function scaffolding_rush:options/refresh
