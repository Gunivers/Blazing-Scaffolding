execute store success score NoVillager options if score NoVillager options matches 0

execute if score NoVillager options matches 0 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The villager has been ","color":"gray"},{"text":"desactivated","color":"red"}]
execute unless score NoVillager options matches 0 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The villager has been ","color":"gray"},{"text":"activated","color":"green"}]

scoreboard players set @a opt_vil_no 0
scoreboard players enable @a opt_vil_no

function scaffolding_rush:options/refresh
