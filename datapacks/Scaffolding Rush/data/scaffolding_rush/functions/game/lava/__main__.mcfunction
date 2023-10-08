
#Rise Lava
execute unless score #lava.speed.tick options matches 0 run scoreboard players add LavaCountdown data 1
execute unless score #lava.speed.tick options matches 0 if score LavaCountdown data >= #lava.speed.tick options run scoreboard players add LavaLevel data 1
execute unless score #lava.speed.tick options matches 0 if score PerformanceMode options matches 0 if score LavaCountdown data >= #lava.speed.tick options as @e[type=marker,name="ScR_LavaLevel"] at @s run function scaffolding_rush:game/lava/rise_globally
execute unless score #lava.speed.tick options matches 0 if score PerformanceMode options matches 1 as @a[gamemode=!spectator] at @s run function scaffolding_rush:game/lava/rise_locally
execute unless score #lava.speed.tick options matches 0 if score PerformanceMode options matches 1 as @e[type=villager,tag=game_villager] at @s run function scaffolding_rush:game/lava/rise_locally

#rise lasting bases
execute unless score LastingBases options matches 0 unless score #lava.speed.tick options matches 0 if score LavaCountdown data >= #lava.speed.tick options run function scaffolding_rush:team/create_base/rise

execute unless score #lava.speed.tick options matches 0 if score LavaCountdown data >= #lava.speed.tick options as @e[type=marker,name="ScR_Build"] at @s run function scaffolding_rush:game/air_replace
execute unless score #lava.speed.tick options matches 0 if score LavaCountdown data >= #lava.speed.tick options run scoreboard players set LavaCountdown data 0


#bossbar
execute store result bossbar filling_lava value run scoreboard players get LavaCountdown data

execute as @e[type=marker,name="ScR_LavaLevel",limit=1] at @s run particle lava ~ ~ ~ 160 0 160 1 20 normal
