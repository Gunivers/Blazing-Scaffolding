#clear the blocks in the playing area
fill -90 1 -90 90 1 90 grass_block
teleport @e[type=area_effect_cloud,tag=ScR_LavaLevel,limit=1] 0 256 0
execute as @e[type=area_effect_cloud,tag=ScR_LavaLevel,limit=1] at @s run function loumardes:scaffolding_rush/clear_area
