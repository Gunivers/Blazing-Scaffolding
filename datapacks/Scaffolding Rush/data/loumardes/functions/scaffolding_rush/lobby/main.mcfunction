#speed
execute as @a store result score @s global run data get entity @s Pos[1]
execute as @a if score @s global matches ..2 run effect give @s minecraft:speed 1 2 true
execute as @a if score @s global matches 4.. run effect clear @s minecraft:speed

#team join lobby
execute as @e[name="Join Blue"] at @s as @a[distance=..1.5,team=!blue] run function loumardes:scaffolding_rush/team/join/blue
execute as @e[name="Join Green"] at @s as @a[distance=..1.5,team=!green] run function loumardes:scaffolding_rush/team/join/green
execute as @e[name="Join Red"] at @s as @a[distance=..1.5,team=!red] run function loumardes:scaffolding_rush/team/join/red
execute as @e[name="Join Yellow"] at @s as @a[distance=..1.5,team=!yellow] run function loumardes:scaffolding_rush/team/join/yellow
execute as @e[name="Spectate"] at @s as @a[distance=..1.5,team=!] run function loumardes:scaffolding_rush/team/leave

#base
execute if score TeamEgg options matches 1 run function loumardes:scaffolding_rush/team/base_egg/give

#howtoplay
execute as @e[name="How to play"] at @s as @a[distance=..2,tag=!howtoplay] run function loumardes:scaffolding_rush/lobby/how_to_play
execute as @a[tag=howtoplay] at @s unless entity @e[name="How to play",distance=..2] run tag @s remove howtoplay 

#startbutton
execute if score RemainingTeam global matches 2.. if block 0 5 7 minecraft:spruce_button[powered=true] run function loumardes:scaffolding_rush/game/countdown
execute if score RemainingTeam global matches ..1 if block 0 5 7 minecraft:spruce_button[powered=true] run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"Not enough players","color":"red"}]
execute unless block 0 5 7 minecraft:spruce_button[powered=false] run setblock 0 5 7 minecraft:spruce_button[face=floor] replace
