effect give @a minecraft:saturation 999999 1 true
execute as @a if score TeamBaseEgg global matches 1 store result score @s global run data get entity @s Pos[1]
execute as @a if score TeamBaseEgg global matches 1 if score @s global matches ..2 run effect give @s minecraft:speed 1 2 true
execute as @a if score TeamBaseEgg global matches 1 if score @s global matches 4.. run effect clear @s minecraft:speed
execute if score TeamBaseEgg global matches 0 as @e[type=minecraft:villager] at @s if entity @a[distance=..1] run effect give @s minecraft:invisibility 1 1 true
execute if score TeamBaseEgg global matches 0 as @e[type=minecraft:villager] at @s unless block ~ ~ ~ #loumardes:air unless block ~ ~ ~ minecraft:scaffolding run tp @s ~ ~0.1 ~

scoreboard players enable @a Reset

#gravel tower
execute as @a[gamemode=survival,nbt={SelectedItem:{id:"minecraft:gravel"}}] run gamemode adventure
execute as @a[gamemode=survival,nbt={SelectedItem:{id:"minecraft:blue_concrete_powder"}}] run gamemode adventure
execute as @a[gamemode=survival,nbt={SelectedItem:{id:"minecraft:lime_concrete_powder"}}] run gamemode adventure
execute as @a[gamemode=survival,nbt={SelectedItem:{id:"minecraft:red_concrete_powder"}}] run gamemode adventure
execute as @a[gamemode=survival,nbt={SelectedItem:{id:"minecraft:yellow_concrete_powder"}}] run gamemode adventure
execute as @a[gamemode=survival,nbt={SelectedItem:{id:"minecraft:ghast_spawn_egg"}}] run gamemode adventure
execute as @a[gamemode=adventure,nbt=!{SelectedItem:{id:"minecraft:gravel"}},nbt=!{SelectedItem:{id:"minecraft:blue_concrete_powder"}},nbt=!{SelectedItem:{id:"minecraft:lime_concrete_powder"}},nbt=!{SelectedItem:{id:"minecraft:red_concrete_powder"}},nbt=!{SelectedItem:{id:"minecraft:yellow_concrete_powder"}},nbt=!{SelectedItem:{id:"minecraft:ghast_spawn_egg"}}] run gamemode survival
execute as @e[type=minecraft:falling_block,nbt={BlockState:{Name:"minecraft:gravel"}}] at @s if block ~ ~-0.75 ~ #loumardes:tower run kill @s
execute as @e[type=minecraft:falling_block,nbt={BlockState:{Name:"minecraft:blue_concrete_powder"}}] at @s if block ~ ~-0.75 ~ #loumardes:tower run kill @s
execute as @e[type=minecraft:falling_block,nbt={BlockState:{Name:"minecraft:lime_concrete_powder"}}] at @s if block ~ ~-0.75 ~ #loumardes:tower run kill @s
execute as @e[type=minecraft:falling_block,nbt={BlockState:{Name:"minecraft:red_concrete_powder"}}] at @s if block ~ ~-0.75 ~ #loumardes:tower run kill @s
execute as @e[type=minecraft:falling_block,nbt={BlockState:{Name:"minecraft:yellow_concrete_powder"}}] at @s if block ~ ~-0.75 ~ #loumardes:tower run kill @s

#startbutton
execute if score GameLoading global matches 0 if block 0 5 7 minecraft:spruce_button[powered=true] run function loumardes:scaffolding_rush/start_countdown
execute if score GameLobby global matches 1 unless block 0 5 7 minecraft:spruce_button run setblock 0 5 7 minecraft:spruce_button[face=floor] replace

#suffocation
execute as @a[gamemode=!spectator] at @s if score GameRunning global matches 0 if block ~ ~ ~ #loumardes:lobby run tp @s ~ ~0.5 ~

#flip the options value
function loumardes:scaffolding_rush/options/any

#instant pillar
execute if score InstantPillar options matches 1 at @e[type=falling_block,nbt={BlockState:{Name:"minecraft:scaffolding"}}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647, CustomName:'{"text":"ScR_Pillar"}'}
execute if score InstantPillar options matches 1 as @e[type=area_effect_cloud ,name=ScR_Pillar] at @s run function loumardes:scaffolding_rush/pillar_start

#items
execute as @e[type=item,tag=!processed] run function loumardes:scaffolding_rush/item/catch_drop

#respawn dead players
execute as @a[scores={killed=1..}] run function loumardes:scaffolding_rush/died

#villager placed
execute as @a[scores={bluePlaced=1..}] run function loumardes:scaffolding_rush/villager/placed
execute as @a[scores={greenPlaced=1..}] run function loumardes:scaffolding_rush/villager/placed
execute as @a[scores={redPlaced=1..}] run function loumardes:scaffolding_rush/villager/placed
execute as @a[scores={yellowPlaced=1..}] run function loumardes:scaffolding_rush/villager/placed

#move villagers
execute as @a[scores={villagerClick=1..}] at @s run function loumardes:scaffolding_rush/villager/give/any

#warn villagers height
function loumardes:scaffolding_rush/villager/warn

#inform the player that he has the egg
title @a[tag=has_egg] actionbar ["",{"text":"||","obfuscated":true,"color":"gold"},{"text":" You have the egg !! Place it to respawn ! ","color":"red"},{"text":"||","obfuscated":true,"color":"gold"}]

#toggle performance saving mode
execute if entity @a[scores={opt_perf_mode=1}] run scoreboard players set PerformanceMode options 0
execute if entity @a[scores={opt_perf_mode=2}] run scoreboard players set PerformanceMode options 1
scoreboard players set @a[scores={opt_perf_mode=2..}] performanceMode 0

#starts the map
execute if entity @a[scores={StartGame=1..}] run function loumardes:scaffolding_rush/start_countdown
scoreboard players set @a StartGame 0

#reset the map
execute if entity @a[scores={Reset=1..}] run function loumardes:scaffolding_rush/reset
scoreboard players set @a Reset 0

#rise lava level
#globally
#execute if score PerformanceMode options matches 0 if score LavaCountdown global >= LavaSpeed options at @e[type=area_effect_cloud,name=ScR_LavaLevel] run function loumardes:scaffolding_rush/rise_lava_globally
#locally

#game logic
execute if score GameRunning global matches 1 run function loumardes:scaffolding_rush/game_logic

#Lobby
#
#team join lobby
execute as @e[name="Join Blue"] at @s as @a[distance=..1.5,team=!blue] run function loumardes:scaffolding_rush/team/join/blue
execute as @e[name="Join Green"] at @s as @a[distance=..1.5,team=!green] run function loumardes:scaffolding_rush/team/join/green
execute as @e[name="Join Red"] at @s as @a[distance=..1.5,team=!red] run function loumardes:scaffolding_rush/team/join/red
execute as @e[name="Join Yellow"] at @s as @a[distance=..1.5,team=!yellow] run function loumardes:scaffolding_rush/team/join/yellow
execute as @e[name="Spectate"] at @s as @a[distance=..1.5,team=!] run function loumardes:scaffolding_rush/team/leave

#base
execute if score TeamEgg options matches 1 if score TeamBaseEgg global matches 1 run function loumardes:scaffolding_rush/team/base_egg/give

#howtoplay
execute as @e[name="How to play"] at @s as @a[distance=..2,tag=!howtoplay] run function loumardes:scaffolding_rush/lobby/how_to_play
execute as @a[tag=howtoplay] at @s unless entity @e[name="How to play",distance=..2] run tag @s remove howtoplay 
