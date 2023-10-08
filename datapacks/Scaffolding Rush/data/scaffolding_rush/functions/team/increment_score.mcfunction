#increment the score of the player's team  

execute if entity @s[team=blue] run scoreboard players add #blue.score data 1
execute if entity @s[team=red] run scoreboard players add #red.score data 1
execute if entity @s[team=green] run scoreboard players add #green.score data 1
execute if entity @s[team=yellow] run scoreboard players add #yellow.score data 1
