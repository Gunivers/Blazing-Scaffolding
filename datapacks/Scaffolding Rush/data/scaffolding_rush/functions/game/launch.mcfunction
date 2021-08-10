execute if score RemainingTeam global matches 2.. run function scaffolding_rush:game/countdown
execute if score RemainingTeam global matches ..1 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"Not enough teams","color":"red"}]
