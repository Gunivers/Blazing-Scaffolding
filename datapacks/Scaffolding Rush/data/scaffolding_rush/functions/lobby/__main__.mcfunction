#updating coordonate vars
execute as @e store result score @s XEntity run data get entity @s Pos[0]
execute as @a store result score @s YEntity run data get entity @s Pos[1]
execute as @e store result score @s ZEntity run data get entity @s Pos[2]

execute as @a[gamemode=survival] run gamemode adventure

#team join lobby
execute as @a[team=!blue] at @e[type=minecraft:area_effect_cloud,name="Join Blue"] as @s[distance=..1] run function scaffolding_rush:team/join/blue
execute as @a[team=!green] at @e[type=minecraft:area_effect_cloud,name="Join Green"] as @s[distance=..1] run function scaffolding_rush:team/join/green
execute as @a[team=!red] at @e[type=minecraft:area_effect_cloud,name="Join Red"] as @s[distance=..1] run function scaffolding_rush:team/join/red
execute as @a[team=!yellow] at @e[type=minecraft:area_effect_cloud,name="Join Yellow"] as @s[distance=..1] run function scaffolding_rush:team/join/yellow
execute as @a[team=!] at @e[type=minecraft:area_effect_cloud,name="Spectate"] as @s[distance=..1] run function scaffolding_rush:team/leave
execute as @a[team=!random] at @e[type=minecraft:area_effect_cloud,name="Join Game"] as @s[distance=..1] run function scaffolding_rush:team/join/random

#base
execute at @e[type=minecraft:item,nbt={Item:{tag:{EntityTag:{Tags:["baseTeam"]}}}}] as @a[distance=..5] if score TeamEgg options matches 1 run function scaffolding_rush:lobby/base_egg/give
execute as @e[type=minecraft:armor_stand,tag=baseTeam,tag=!villagerSpawned] run function scaffolding_rush:lobby/base_egg/spawn

#howtoplay
execute as @e[name="How to play"] at @s as @a[distance=..3,tag=!howtoplay] run function scaffolding_rush:lobby/how_to_play
execute as @a[tag=howtoplay] at @s unless entity @e[name="How to play",distance=..3] run tag @s remove howtoplay 

#button place base
execute positioned 0 6 7 if entity @e[tag=LobbyBase,distance=..1] run function scaffolding_rush:lobby/base_egg/remove_at_button

#check player coordonates
execute unless score GameEnd global matches 1 run function scaffolding_rush:lobby/correct_coordinates

function scaffolding_rush:lobby/animation/__main__

# Light
execute as @e[type=marker,tag=lobbyLight] at @s if block ~ ~ ~ #scaffolding_rush:air run function scaffolding_rush:lobby/light

# Suffocation
execute as @a at @s if block ~ ~ ~ #scaffolding_rush:lobby_suffocation run function scaffolding_rush:lobby/suffocation

# Start game
execute as @a[scores={bellring=1..}] run scoreboard players set @s StartGame 1
scoreboard players reset @a bellring

# interaction
function scaffolding_rush:lobby/interaction/__main__
