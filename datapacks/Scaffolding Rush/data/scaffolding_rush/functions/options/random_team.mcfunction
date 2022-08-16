execute store success score RandomTeam options if score RandomTeam options matches 0

execute if score RandomTeam options matches 0 run function scaffolding_rush:team/join/random
execute unless score RandomTeam options matches 0 run team join random @a[team=!]


execute if score RandomTeam options matches 0 run tellraw @a[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"text":"Random teams have been ","color":"gray"},{"text":"deactivated","color":"red"}]
execute unless score RandomTeam options matches 0 run tellraw @a[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"text":"Random teams have been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score RandomTeam options matches 0 run tellraw @a[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"text":"Les équipes aléatoires ont été ","color":"gray"},{"text":"désactivées","color":"red"}]
execute unless score RandomTeam options matches 0 run tellraw @a[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"text":"Les équipes aléatoires ont été ","color":"gray"},{"text":"activées","color":"green"}]

function scaffolding_rush:lobby/load

scoreboard players set @s opt_random_team 0
scoreboard players enable @s opt_random_team

function scaffolding_rush:options/refresh
