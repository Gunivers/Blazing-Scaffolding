

#create the tutorial structure
place template scaffolding_rush:parkour/trainingparkour ~-1 ~ ~-2

#tp the player and set it's spawn
teleport @s ~1 ~8.1 ~ -90 0
spawnpoint @s ~ ~8 ~ -90

execute as @s at @s store result score @s TutorialCellZ run data get entity @s Pos[2]


tag @s add inTutorial
