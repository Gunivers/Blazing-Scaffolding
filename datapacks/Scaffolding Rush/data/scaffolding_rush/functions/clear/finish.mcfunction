fill ~-90 0 ~-90 ~90 0 ~90 bedrock

execute if entity @s[x=0,y=-10,z=0,dy=20] run fill -90 1 -90 90 1 90 grass_block
execute if entity @s[x=1000,y=-10,z=1000,dy=20] run fill 1090 1 1090 910 1 910 magma_block

execute if entity @s[x=0,y=-10,z=0,dy=20] run schedule function scaffolding_rush:lobby/load 2t
execute if entity @s[x=0,y=-10,z=0,dy=20] run schedule function scaffolding_rush:broadcast/lobby_loaded 6t