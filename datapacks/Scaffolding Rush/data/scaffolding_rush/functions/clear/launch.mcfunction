#clear the blocks in the playing area
teleport @e[type=marker,name="ScR_LavaLevel",limit=1] 0 270 0
execute as @e[type=marker,name="ScR_LavaLevel",limit=1] at @s run function scaffolding_rush:clear/area
