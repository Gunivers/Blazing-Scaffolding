

#create the tutorial structure
place template scaffolding_rush:parkour/trainingparkour ~-1 ~ ~-2

#tp the player and set it's spawn
teleport @s ~1 ~8.1 ~ -90 -7

execute as @s at @s store result score @s tutorial.cell.z run data get entity @s Pos[2]

gamemode adventure @s
scoreboard players set @s sc.timer.tutorial 0

tag @s add player.item.can_have_items
scoreboard players set @s player.item.scaffolding.count 42

tag @s add inTutorial
