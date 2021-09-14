#Recursively removes all blocks in the playing area


execute at @s run function scaffolding_rush:clear/remove_blocks

execute at @s run teleport @s ~ ~-10 ~
execute store result score @s YEntity run data get entity @s Pos[1]

#execute unless score @s YEntity matches 2 at @s run function scaffolding_rush:clear/area
execute as @s unless score @s YEntity matches ..2 run schedule function scaffolding_rush:clear/area 1t
execute as @s if score @s YEntity matches ..2 at @s run function scaffolding_rush:clear/finish

say clear area