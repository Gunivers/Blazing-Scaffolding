


#Rise Lava
execute unless score Lavaspeed options matches 0 run scoreboard players add LavaCountdown global 1
execute if score LavaCountdown global >= Lavaspeed options run scoreboard players add LavaLevel global 1
execute if score PerformanceMode global matches 0 if score LavaCountdown global >= Lavaspeed options as @e[type=area_effect_cloud,tag=ScR_LavaLevel] at @s run function loumardes:scaffolding_rush/rise_lava_globally
execute if score LavaCountdown global >= Lavaspeed options run scoreboard players set LavaCountdown global 0

execute as @a[gamemode=survival] at @s run function loumardes:scaffolding_rush/simulate_lava
execute as @e[type=villager] at @s run function loumardes:scaffolding_rush/simulate_lava


#villager egg respawn
execute if score VillagerForgiveness options matches 1 run function loumardes:scaffolding_rush/villager_loss_detection

#detect end of game
scoreboard players set RemainingTeam global 0

execute if entity @a[team=blue,gamemode=!spectator,limit=1] run scoreboard players add RemainingTeam global 1
execute if entity @a[team=green,gamemode=!spectator,limit=1] run scoreboard players add RemainingTeam global 1
execute if entity @a[team=red,gamemode=!spectator,limit=1] run scoreboard players add RemainingTeam global 1
execute if entity @a[team=yellow,gamemode=!spectator,limit=1] run scoreboard players add RemainingTeam global 1

execute if score RemainingTeam global matches ..1 run function loumardes:scaffolding_rush/finish