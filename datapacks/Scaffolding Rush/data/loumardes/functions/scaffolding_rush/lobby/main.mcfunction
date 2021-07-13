#speed
execute as @a store result score @s YEntity run data get entity @s Pos[1]
execute as @a if score @s YEntity matches ..2 run effect give @s minecraft:speed 1 2 true
execute as @a if score @s YEntity matches 4.. run effect clear @s minecraft:speed

#team join lobby
execute as @a[team=!blue] at @e[type=minecraft:area_effect_cloud,name="Join Blue"] as @s[distance=..1.5] run function loumardes:scaffolding_rush/team/join/blue
execute as @a[team=!green] at @e[type=minecraft:area_effect_cloud,name="Join Green"] as @s[distance=..1.5] run function loumardes:scaffolding_rush/team/join/green
execute as @a[team=!red] at @e[type=minecraft:area_effect_cloud,name="Join Red"] as @s[distance=..1.5,team=!red] run function loumardes:scaffolding_rush/team/join/red
execute as @a[team=!yellow] at @e[type=minecraft:area_effect_cloud,name="Join Yellow"] as @s[distance=..1.5] run function loumardes:scaffolding_rush/team/join/yellow
execute as @a[team=!] at @e[type=minecraft:area_effect_cloud,name="Spectate"] as @s[distance=..1.5] run function loumardes:scaffolding_rush/team/leave
execute as @a[team=!random] at @e[type=minecraft:area_effect_cloud,name="Join Game"] as @s[distance=..1.5] run function loumardes:scaffolding_rush/team/random

#base
execute if score TeamEgg options matches 1 run function loumardes:scaffolding_rush/lobby/base_egg/give

#howtoplay
execute as @e[name="How to play"] at @s as @a[distance=..3,tag=!howtoplay] run function loumardes:scaffolding_rush/lobby/how_to_play
execute as @a[tag=howtoplay] at @s unless entity @e[name="How to play",distance=..3] run tag @s remove howtoplay 

#startbutton
execute if score RemainingTeam global matches 2.. if block 0 5 7 minecraft:spruce_button[powered=true] run function loumardes:scaffolding_rush/game/countdown
execute if score RemainingTeam global matches ..1 if block 0 5 7 minecraft:spruce_button[powered=true] run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"Not enough teams","color":"red"}]
execute unless block 0 5 7 minecraft:cave_air unless block 0 5 7 minecraft:spruce_button[powered=false] run setblock 0 5 7 minecraft:spruce_button[face=floor] replace

#button place base
execute positioned 0 6 7 run kill @e[type=minecraft:armor_stand,distance=..1]
