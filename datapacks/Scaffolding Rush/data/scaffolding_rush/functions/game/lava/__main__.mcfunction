
#Rise Lava
execute unless score LavaSpeedTics options matches 0 run scoreboard players add LavaCountdown global 1
execute unless score LavaSpeedTics options matches 0 if score LavaCountdown global >= LavaSpeedTics options run scoreboard players add LavaLevel global 1
execute unless score LavaSpeedTics options matches 0 if score PerformanceMode options matches 0 if score LavaCountdown global >= LavaSpeedTics options as @e[type=marker,name="ScR_LavaLevel"] at @s run function scaffolding_rush:game/lava/rise_globally
execute unless score LavaSpeedTics options matches 0 if score PerformanceMode options matches 1 as @a[gamemode=!spectator] at @s run function scaffolding_rush:game/lava/rise_locally
execute unless score LavaSpeedTics options matches 0 if score PerformanceMode options matches 1 as @e[type=villager,tag=!LobbyBase] at @s run function scaffolding_rush:game/lava/rise_locally

#rise lasting bases
execute unless score LastingBases options matches 0 unless score LavaSpeedTics options matches 0 if score LavaCountdown global >= LavaSpeedTics options run function scaffolding_rush:team/create_base/rise

execute unless score LavaSpeedTics options matches 0 if score LavaCountdown global >= LavaSpeedTics options as @e[type=marker,name="ScR_Build"] at @s run function scaffolding_rush:game/air_replace
execute unless score LavaSpeedTics options matches 0 if score LavaCountdown global >= LavaSpeedTics options run scoreboard players set LavaCountdown global 0


#bossbar
execute store result bossbar filling_lava value run scoreboard players get LavaCountdown global

execute as @e[type=marker,name="ScR_LavaLevel",limit=1] at @s run particle lava ~ ~ ~ 160 0 160 1 20 normal
