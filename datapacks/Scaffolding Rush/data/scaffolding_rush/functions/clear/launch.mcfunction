#clear the blocks in the playing area

scoreboard players set ClearRunning global 1
execute as @e[type=marker,name="ScR_LavaLevel",limit=1] at @s run function scaffolding_rush:clear/area
