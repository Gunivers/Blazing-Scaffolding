
scoreboard players add TutorialPlacementRecursionStep data 1

execute unless block ~ ~7 ~ minecraft:air positioned ~ ~ ~4 run function scaffolding_rush:tutorial/room/step_right

execute if block ~ ~7 ~ minecraft:air run function scaffolding_rush:tutorial/room/create

