#Recursively removes all blocks in the playing area


execute at @e[type=marker,name="ScR_LavaLevel",limit=1] run function scaffolding_rush:clear/remove_blocks

execute as @e[type=marker,name="ScR_LavaLevel",limit=1] at @s run teleport @s ~ ~-10 ~
execute as @e[type=marker,name="ScR_LavaLevel",limit=1] store result score @s YEntity run data get entity @s Pos[1]

#execute unless score @s YEntity matches 2 at @s run function scaffolding_rush:clear/area
execute unless score @e[type=marker,name="ScR_LavaLevel",limit=1] YEntity matches ..2 run schedule function scaffolding_rush:clear/area 1t
execute if score @e[type=marker,name="ScR_LavaLevel",limit=1] YEntity matches ..2 run function scaffolding_rush:clear/finish

