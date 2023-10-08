
team join random @a[team=!]
execute store result score nb_players const if entity @a[team=random]

tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Teams randomized","color":"gray"}]
tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Equipes mélangées","color":"gray"}]

execute if score nb_players const matches ..2 run tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"make sure to join a team in order to randomly be assigned to another.","color":"gray"}]
execute if score nb_players const matches ..2 run tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"pensez à rejoindre une des équipe pour en avoir une autre attribuée au hasard","color":"gray"}]

function scaffolding_rush:team/random_recursion