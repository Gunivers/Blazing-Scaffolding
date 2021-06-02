
scoreboard players enable @a StartGame
scoreboard players enable @a Reset
scoreboard players enable @a performanceMode

#respawn dead players
execute as @a[scores={killed=1..}] run function loumardes:scaffolding_rush/respawn
scoreboard players set @a killed 0

#move villagers
execute as @a if score @s villagerClick matches 1.. at @s run function loumardes:scaffolding_rush/grab_villager

#toggle performance saving mode
execute if entity @a[scores={performanceMode=1}] run scoreboard players set PerformanceMode constant 0
execute if entity @a[scores={performanceMode=2}] run scoreboard players set PerformanceMode constant 1
scoreboard players set @a performanceMode 0


#starts and reset the map
execute if entity @a[scores={StartGame=1..}] run scoreboard players set GameRunning constant 1
scoreboard players set @a StartGame 0

execute if entity @a[scores={Reset=1..}] run tp @e[type=area_effect_cloud,tag=ScR_LavaLevel,limit=1] 0 256 0
execute if entity @a[scores={Reset=1..}] as @e[type=area_effect_cloud,tag=ScR_LavaLevel,limit=1] at @s run function loumardes:scaffolding_rush/clear_area
execute if entity @a[scores={Reset=1..}] run scoreboard players set GameRunning constant 0
scoreboard players set @a Reset 0

#rise lava level
execute if score GameRunning constant matches 1 unless score Lavaspeed constant matches 0 run scoreboard players add LavaCountdown constant 1
execute if score LavaCountdown constant >= Lavaspeed constant at @e[type=area_effect_cloud,tag=ScR_LavaLevel] run function loumardes:scaffolding_rush/rise_lava
execute if score LavaCountdown constant >= Lavaspeed constant as @e[type=area_effect_cloud,tag=ScR_LavaLevel] at @s run tp @s ~ ~1 ~
execute if score LavaCountdown constant >= Lavaspeed constant run scoreboard players set LavaCountdown constant 0

