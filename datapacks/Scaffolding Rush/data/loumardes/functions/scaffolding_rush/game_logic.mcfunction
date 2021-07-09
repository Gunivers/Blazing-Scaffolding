
#Rise Lava
execute unless score LavaSpeedTics options matches 0 run scoreboard players add LavaCountdown global 1
execute if score LavaCountdown global >= LavaSpeedTics options run scoreboard players add LavaLevel global 1
execute if score PerformanceMode options matches 0 if score LavaCountdown global >= LavaSpeedTics options as @e[type=area_effect_cloud,name=ScR_LavaLevel] at @s run function loumardes:scaffolding_rush/lava/rise_globally
execute if score LavaCountdown global >= LavaSpeedTics options run scoreboard players set LavaCountdown global 0

execute as @a[gamemode=!spectator] at @s run function loumardes:scaffolding_rush/lava/simulate
execute as @e[type=villager] at @s run function loumardes:scaffolding_rush/lava/simulate

#villager egg respawn
execute if score VillagerForgiveness options matches 1 run function loumardes:scaffolding_rush/villager/respawn/villager_loss_detection

#detect end of game
scoreboard players set RemainingTeam global 0

execute if entity @a[team=blue,gamemode=!spectator,limit=1] run scoreboard players add RemainingTeam global 1
execute if entity @a[team=green,gamemode=!spectator,limit=1] run scoreboard players add RemainingTeam global 1
execute if entity @a[team=red,gamemode=!spectator,limit=1] run scoreboard players add RemainingTeam global 1
execute if entity @a[team=yellow,gamemode=!spectator,limit=1] run scoreboard players add RemainingTeam global 1

execute if score RemainingTeam global matches ..1 run function loumardes:scaffolding_rush/finish
