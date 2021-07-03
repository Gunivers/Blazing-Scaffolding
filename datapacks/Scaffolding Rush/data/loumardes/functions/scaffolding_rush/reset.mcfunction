
#clear the blocks in the playing area
tp @e[type=area_effect_cloud,tag=ScR_LavaLevel,limit=1] 0 256 0
execute as @e[type=area_effect_cloud,tag=ScR_LavaLevel,limit=1] at @s run function loumardes:scaffolding_rush/clear_area

scoreboard players set LavaLevel constant 1
scoreboard players set GameRunning constant 0

