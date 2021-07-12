#Get LavaLevel
tp @e[type=area_effect_cloud,name=ScR_LavaLevel,limit=1] @s

execute store result entity @e[type=area_effect_cloud,name=ScR_LavaLevel,limit=1] Pos[1] double 1 run scoreboard players get LavaLevel global

#set Air
execute as @e[type=area_effect_cloud,name=ScR_LavaLevel,limit=1] at @s store success score success global run fill ~-7 ~10 ~7 ~7 ~11 ~-7 air replace #loumardes:buildingblock

execute if score success global matches 1 as @e[type=area_effect_cloud,name=ScR_LavaLevel,limit=1] at @s run function loumardes:scaffolding_rush/broadcast/maxbuild
#execute if score LavaLevel global matches 1 as @e[type=area_effect_cloud,name=ScR_LavaLevel,limit=1] at @s run fill ~-7 ~10 ~7 ~7 ~11 ~-7 air replace #loumardes:replaceair

#execute if score LavaLevel global matches 1.. run scoreboard players set success global 0
#execute unless score LavaLevel global matches 1 as @e[type=area_effect_cloud,name=ScR_LavaLevel,limit=1] at @s unless blocks ~-7 ~10 ~7 ~7 ~10 ~-7 0 255 0 all run fill ~-7 ~10 ~7 ~7 ~10 ~-7 air replace #loumardes:noreplaceair
#execute unless score LavaLevel global matches ..2 as @e[type=area_effect_cloud,name=ScR_LavaLevel,limit=1] at @s run fill ~-8 ~-2 ~8 ~8 ~-2 ~8 magma_block replace air
