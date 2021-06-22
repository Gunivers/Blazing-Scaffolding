
scoreboard players enable @a StartGame
scoreboard players enable @a Reset
scoreboard players enable @a performanceMode

#kill items other than villager eggs
execute as @e[type=minecraft:item] unless data entity @s Item.tag.EntityTag run kill @s
#items
execute as @a run function loumardes:scaffolding_rush/item_management

#respawn dead players
execute as @a[tag=killed] run function loumardes:scaffolding_rush/respawn
tag @a[scores={killed=1..}] add killed
scoreboard players set @a killed 0

#move villagers
execute as @a if score @s villagerClick matches 1.. at @s run function loumardes:scaffolding_rush/grab_villager

#toggle performance saving mode
execute if entity @a[scores={performanceMode=1}] run scoreboard players set PerformanceMode constant 0
execute if entity @a[scores={performanceMode=2}] run scoreboard players set PerformanceMode constant 1
scoreboard players set @a[scores={performanceMode=2..}] performanceMode 0


#starts the map
execute if entity @a[scores={StartGame=1..}] run scoreboard players set GameRunning constant 1
scoreboard players set @a StartGame 0

#reset the map
execute if entity @a[scores={Reset=1..}] run tp @e[type=area_effect_cloud,tag=ScR_LavaLevel,limit=1] 0 256 0
execute if entity @a[scores={Reset=1..}] as @e[type=area_effect_cloud,tag=ScR_LavaLevel,limit=1] at @s run function loumardes:scaffolding_rush/clear_area
execute if entity @a[scores={Reset=1..}] run scoreboard players set LavaLevel constant 1
execute if entity @a[scores={Reset=1..}] run scoreboard players set GameRunning constant 0
execute if entity @a[scores={Reset=1..}] run function loumardes:scaffolding_rush/give_eggs

scoreboard players set @a Reset 0

#rise lava level
execute if score GameRunning constant matches 1 unless score Lavaspeed constant matches 0 run scoreboard players add LavaCountdown constant 1
#globally
execute if score PerformanceMode constant matches 0 if score LavaCountdown constant >= Lavaspeed constant at @e[type=area_effect_cloud,tag=ScR_LavaLevel] run function loumardes:scaffolding_rush/rise_lava_globally
#locally
execute if score LavaCountdown constant >= Lavaspeed constant run scoreboard players add LavaLevel constant 1
execute if score LavaCountdown constant >= Lavaspeed constant run scoreboard players set LavaCountdown constant 0
execute if score PerformanceMode constant matches 1 as @a at @s run function loumardes:scaffolding_rush/rise_lava_locally
execute if score PerformanceMode constant matches 1 as @e[type=villager] at @s run function loumardes:scaffolding_rush/rise_lava_locally

#warn villagers height
function loumardes:scaffolding_rush/warn_villager
