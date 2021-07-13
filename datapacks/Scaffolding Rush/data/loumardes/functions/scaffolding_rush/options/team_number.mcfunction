
scoreboard players operation TeamNumber options = @s opt_team_number

tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The number of teams has been set to ","color":"gray"},{"score":{"name":"TeamNumber","objective":"options"},"color":"gold"}]

execute if score Random options matches 0 run function loumardes:scaffolding_rush/lobby/load

scoreboard players set @a opt_team_number 0
scoreboard players enable @a opt_team_number

function loumardes:scaffolding_rush/options/refresh
