#updating coordonate vars
execute as @e store result score @s pos.x run data get entity @s Pos[0]
execute as @a store result score @s pos.y run data get entity @s Pos[1]
execute as @e store result score @s pos.z run data get entity @s Pos[2]

#check player coordonates
execute unless score #game.end data matches 1 as @a[gamemode=!spectator,tag=!inTutorial] at @s run function scaffolding_rush:lobby/correct_coordinates

function scaffolding_rush:lobby/animation/__main__

# Light
execute as @e[type=marker,tag=lobbyLight] at @s if block ~ ~ ~ #scaffolding_rush:air run function scaffolding_rush:lobby/light

# Suffocation
execute as @a[tag=!player.is_dead] at @s if block ~ ~ ~ #scaffolding_rush:lobby_suffocation run function scaffolding_rush:lobby/suffocation

# Start game
execute unless score #admin.exist options matches 1 as @a[scores={bellring=1..}] run scoreboard players set @s start_game 1
execute if score #admin.exist options matches 1 as @a[scores={bellring=1..},tag=admin] run scoreboard players set @s start_game 1
execute if score #admin.exist options matches 1 as @a[scores={bellring=1..},tag=!admin] run tellraw @s ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.sorry_only","color":"red"},{"selector":"@a[tag=admin]","color":"red"},{"translate":"blazing_scaffolding.can_start","color":"red"}]

scoreboard players reset @a bellring

# interaction
function scaffolding_rush:lobby/interaction/__main__

execute as @a[scores={tutorial=1}] run function scaffolding_rush:tutorial/join

tag @a[tag=!player.item.can_have_book] add player.item.can_have_book
scoreboard players enable @a[tag=!inTutorial] tutorial
function scaffolding_rush:lobby/protection/__main__
