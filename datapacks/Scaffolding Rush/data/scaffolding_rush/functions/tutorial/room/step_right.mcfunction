
scoreboard players add TutorialPlacementRecursionStep global 1

execute unless block ~ ~7 ~ minecraft:air if score TutorialPlacementRecursionStep global matches 4.. run tellraw @a ["",{"text":"[BS]","color":"gold"},{"text":" Tutorial room is full !","color":"red"}]
execute unless block ~ ~7 ~ minecraft:air unless score TutorialPlacementRecursionStep global matches 4.. positioned ~ ~ ~4 run function scaffolding_rush:tutorial/room/step_right

execute if block ~ ~7 ~ minecraft:air run function scaffolding_rush:tutorial/room/create

