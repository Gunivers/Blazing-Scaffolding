

#create the tutorial structure
place template scaffolding_rush:parkour/trainingparkour ~-1 ~ ~-2

#tp the player and set it's spawn
teleport @s ~1 ~8.1 ~ -90 0
spawnpoint @s ~ ~8 ~ -90

execute as @s at @s store result score @s tutorial.cell.z run data get entity @s Pos[2]

tag @s remove player.items.have_items
clear @s
gamemode adventure @s
scoreboard players set @s sc.timer.tutorial 0

function scaffolding_rush:player/items/clear
scoreboard players set @s player.item.scaffolding_count 42

tag @s add inTutorial
