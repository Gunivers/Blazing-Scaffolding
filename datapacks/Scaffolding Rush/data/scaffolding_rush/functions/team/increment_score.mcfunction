#increment the score of the player's team  

execute if entity @s[team=blue] run scoreboard players add Blue Score 1
execute if entity @s[team=red] run scoreboard players add Red Score 1
execute if entity @s[team=green] run scoreboard players add Green Score 1
execute if entity @s[team=yellow] run scoreboard players add Yellow Score 1
