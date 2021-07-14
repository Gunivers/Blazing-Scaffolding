
execute if score TeamNumber options matches 2.. if score @s opt_team_number matches 2.. run scoreboard players operation TeamNumber options = @s opt_team_number

execute if score TeamNumber options matches 2.. if score @s opt_team_number matches 2.. run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The number of teams has been set to ","color":"gray"},{"score":{"name":"TeamNumber","objective":"options"},"color":"gold"}]

execute if score RandomTeam options matches 0 if score TeamNumber options matches 2.. run function scaffolding_rush:lobby/load

scoreboard players set @a opt_team_number 0
scoreboard players enable @a opt_team_number

function scaffolding_rush:options/refresh
