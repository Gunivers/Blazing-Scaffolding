
execute if score TeamNumber options matches 2.. if score @s opt_team_number matches 2.. run scoreboard players operation TeamNumber options = @s opt_team_number

execute if score TeamNumber options matches 2.. if score @s opt_team_number matches 2.. run tellraw @a[scores={language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The number of teams has been set to ","color":"gray"},{"score":{"name":"TeamNumber","objective":"options"},"color":"gold"}]
execute if score TeamNumber options matches 2.. if score @s opt_team_number matches 2.. run tellraw @a[scores={language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Le nombre d'équipe a été mis sur ","color":"gray"},{"score":{"name":"TeamNumber","objective":"options"},"color":"gold"}]

function scaffolding_rush:lobby/load

#When the number of team decrease, send the players to a random team when their team no longer exists
execute if score TeamNumber options matches 2 as @a[team=yellow] run function scaffolding_rush:team/join/random
execute if score TeamNumber options matches 2..3 as @a[team=green] run function scaffolding_rush:team/join/random

execute if score TeamEgg options matches 1 run function scaffolding_rush:lobby/base_egg/reset
function scaffolding_rush:team/join/killbase

scoreboard players set @s opt_team_number 0
scoreboard players enable @s opt_team_number

function scaffolding_rush:options/refresh
