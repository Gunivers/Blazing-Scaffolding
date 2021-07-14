#Recursively removes all blocks in the playing area

teleport @s ~ ~-1 ~
execute store result score @s YEntity run data get entity @s Pos[1]

execute at @s run function scaffolding_rush:clear/remove_blocks

execute unless score @s YEntity matches 2 at @s run function scaffolding_rush:clear/area
