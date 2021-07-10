#speed
execute as @a store result score @s global run data get entity @s Pos[1]
execute as @a if score @s global matches ..2 run effect give @s minecraft:speed 1 2 true
execute as @a if score @s global matches 4.. run effect clear @s minecraft:speed

#team join lobby
execute at @e[name="Join Blue"] as @a[distance=..1.5,team=!blue] run function loumardes:scaffolding_rush/team/join/blue
execute at @e[name="Join Green"] as @a[distance=..1.5,team=!green] run function loumardes:scaffolding_rush/team/join/green
execute at @e[name="Join Red"] as @a[distance=..1.5,team=!red] run function loumardes:scaffolding_rush/team/join/red
execute at @e[name="Join Yellow"] as @a[distance=..1.5,team=!yellow] run function loumardes:scaffolding_rush/team/join/yellow
execute at @e[name="Spectate"] as @a[distance=..1.5,team=!] run function loumardes:scaffolding_rush/team/leave

#base
execute if score TeamEgg options matches 1 run function loumardes:scaffolding_rush/team/base_egg/give

#howtoplay
execute as @e[name="How to play"] at @s as @a[distance=..3,tag=!howtoplay] run function loumardes:scaffolding_rush/lobby/how_to_play
execute as @a[tag=howtoplay] at @s unless entity @e[name="How to play",distance=..3] run tag @s remove howtoplay 

#startbutton
execute if score RemainingTeam global matches 2.. if block 0 5 7 minecraft:spruce_button[powered=true] run function loumardes:scaffolding_rush/game/countdown
execute if score RemainingTeam global matches ..1 if block 0 5 7 minecraft:spruce_button[powered=true] run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"Not enough teams","color":"red"}]
execute unless block 0 5 7 minecraft:cave_air unless block 0 5 7 minecraft:spruce_button[powered=false] run setblock 0 5 7 minecraft:spruce_button[face=floor] replace

execute as @a[scores={villagerClick=1..}] run function loumardes:scaffolding_rush/lobby/villager/kill
