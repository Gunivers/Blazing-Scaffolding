effect give @a minecraft:saturation 999999 1 true
execute as @a at @s if score TeamBaseEgg global matches 1 store result score @s global run data get entity @s Pos[1]
execute as @a at @s if score TeamBaseEgg global matches 1 if score @s global matches ..2 run effect give @s minecraft:speed 1 2 true
execute as @a at @s if score TeamBaseEgg global matches 1 if score @s global matches 4.. run effect clear @a minecraft:speed
execute if score TeamBaseEgg global matches 1 as @e[type=minecraft:villager] at @s if entity @a[distance=..1] run effect give @s minecraft:invisibility 1 1 true
execute if score TeamBaseEgg global matches 1 as @e[type=minecraft:villager] at @s unless block ~ ~ ~ #loumardes:air unless block ~ ~ ~ minecraft:scaffolding run kill @s

scoreboard players enable @a StartGame
scoreboard players enable @a Reset

#options triggers
execute if score GameRunning global matches 0 run scoreboard players enable @a opt_lava_speed
execute if score GameRunning global matches 0 run scoreboard players enable @a opt_build_height
execute if score GameRunning global matches 0 run scoreboard players enable @a opt_gravel
execute if score GameRunning global matches 0 run scoreboard players enable @a opt_snowball
execute if score GameRunning global matches 0 run scoreboard players enable @a opt_vil_respawn
execute if score GameRunning global matches 0 run scoreboard players enable @a opt_vil_resp_cd
execute if score GameRunning global matches 0 run scoreboard players enable @a opt_instant_pil
execute if score GameRunning global matches 0 run scoreboard players enable @a opt_perf_mode

#startbutton
execute if score GameLoading global matches 0 if block 1 5 8 minecraft:spruce_button[powered=true] run function loumardes:scaffolding_rush/start_countdown
execute if score GameLobby global matches 1 unless block 1 5 8 minecraft:spruce_button run setblock 1 5 8 minecraft:spruce_button[face=floor] replace

#lobby sign
execute if score GameLobby global matches 1 unless block 3 4 6 minecraft:spruce_sign run setblock 3 4 6 minecraft:spruce_sign[rotation=6]{Text1:'{"text":"===","clickEvent":{"action":"run_command","value":"function loumardes:scaffolding_rush/lobby/settings_btn"},"color":"dark_green"}',Text2:'{"text":"[Settings]","color":"green"}',Text3:'{"text":""}',Text4:'{"text":"===","color":"dark_green"}'}

#suffocation
execute as @a at @s if score GameRunning global matches 0 if block ~ ~ ~ #loumardes:lobby run tp @s ~ ~0.5 ~
execute as @a at @s if block ~ ~ ~ #loumardes:lobby run tp @s ~ ~1 ~
execute if score GameRunning global matches 0 run function loumardes:scaffolding_rush/options/trigger/any

#flip the options value
execute if entity @a[scores={opt_gravel=1..}] store success score UseGravel options if score UseGravel options matches 0
execute if entity @a[scores={opt_snowball=1..}] store success score UseSnowball options if score UseSnowball options matches 0
execute if entity @a[scores={opt_instant_pil=1..}] store success score InstantPillar options if score InstantPillar options matches 0
execute if entity @a[scores={opt_vil_respawn=1..}] store success score VillagerForgiveness options if score VillagerForgiveness options matches 0
execute if entity @a[scores={opt_perf_mode=1..}] store success score PerformanceMode options if score PerformanceMode options matches 0
function loumardes:scaffolding_rush/options/flip/any

scoreboard players set @a opt_gravel 0
scoreboard players set @a opt_snowball 0
scoreboard players set @a opt_instant_pil 0
scoreboard players set @a opt_vil_respawn 0
scoreboard players set @a opt_perf_mode 0
scoreboard players set @a opt_team_egg 0

#set the selected value
execute as @a[scores={opt_vil_resp_cd=1..}] run scoreboard players operation VillagerRespawn options = @s opt_vil_resp_cd
scoreboard players set @a opt_vil_resp_cd 0

execute as @a[scores={opt_lava_speed=1..}] run scoreboard players operation Lavaspeed options = @s opt_lava_speed
scoreboard players set @a opt_lava_speed 0

execute as @a[scores={opt_build_height=1..}] run scoreboard players operation BuildHeight options = @s opt_build_height
scoreboard players set @a opt_build_height 0


#instant pillar
execute if score InstantPillar options matches 1 at @e[type=falling_block,nbt={BlockState:{Name:"minecraft:scaffolding"}}] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["ScR_Pillar"],CustomName:'{"text":"Join Blue","color":"blue"}',CustomNameVisible: 1}
execute if score InstantPillar options matches 1 as @e[type=area_effect_cloud ,tag=ScR_Pillar] at @s run function loumardes:scaffolding_rush/pillar_start


#kill items : other than villager eggs -> unless data entity @s Item.tag.EntityTag
#kill @e[type=minecraft:item]
#execute as @a run function loumardes:scaffolding_rush/item/management

#items
execute as @e[type=item,tag=!processed] run function loumardes:scaffolding_rush/item/catch_drop


#respawn dead players
execute as @a[scores={killed=1..}] run function loumardes:scaffolding_rush/respawn/any

#move villagers
execute as @a if score @s villagerClick matches 1.. at @s run function loumardes:scaffolding_rush/villager/grab/any

#place villagers
execute as @a[scores={bluePlaced=1..}] run function loumardes:scaffolding_rush/respawn/blue
execute as @a[scores={greenPlaced=1..}] run function loumardes:scaffolding_rush/respawn/green
execute as @a[scores={redPlaced=1..}] run function loumardes:scaffolding_rush/respawn/red
execute as @a[scores={yellowPlaced=1..}] run function loumardes:scaffolding_rush/respawn/yellow
#tag @a[scores={villagerPlaced=1..}] remove has_egg
#scoreboard players set @a villagerPlaced 0

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
#execute if score PerformanceMode options matches 0 if score LavaCountdown global >= Lavaspeed options at @e[type=area_effect_cloud,tag=ScR_LavaLevel] run function loumardes:scaffolding_rush/rise_lava_globally
#locally

#warn villagers height
function loumardes:scaffolding_rush/warn_villager

#inform the player that he has the egg
title @a[tag=has_egg] actionbar ["",{"text":"||","obfuscated":true,"color":"gold"},{"text":" You have the egg !! Place it to respawn ! ","color":"red"},{"text":"||","obfuscated":true,"color":"gold"}]

#game logic
execute if score GameRunning global matches 1 run function loumardes:scaffolding_rush/game_logic

#Lobby
#
#team join lobby
execute as @e[name="Join Blue"] at @s as @a[distance=..1,team=!blue] run function loumardes:scaffolding_rush/team/join/blue
execute as @e[name="Join Green"] at @s as @a[distance=..1,team=!green] run function loumardes:scaffolding_rush/team/join/green
execute as @e[name="Join Red"] at @s as @a[distance=..1,team=!red] run function loumardes:scaffolding_rush/team/join/red
execute as @e[name="Join Yellow"] at @s as @a[distance=..1,team=!yellow] run function loumardes:scaffolding_rush/team/join/yellow
execute as @e[name="Spectate"] at @s as @a[distance=..1,team=!] run function loumardes:scaffolding_rush/team/leave

#base
execute if score TeamEgg options matches 1 if score TeamBaseEgg global matches 1 run function loumardes:scaffolding_rush/team/base_egg/give

#howtoplay
execute as @e[name="How to play"] at @s as @a[distance=..3,tag=!howtoplay] run function loumardes:scaffolding_rush/lobby/how_to_play
execute as @a[tag=howtoplay] at @s unless entity @e[name="How to play",distance=..3] run tag @s remove howtoplay 
