#updating coordonate vars
execute as @e store result score @s pos.x run data get entity @s Pos[0]
execute as @a store result score @s pos.y run data get entity @s Pos[1]
execute as @e store result score @s pos.z run data get entity @s Pos[2]

#base
execute at @e[type=minecraft:item,nbt={Item:{tag:{EntityTag:{Tags:["baseTeam"]}}}}] as @a[distance=..5] if score TeamEgg options matches 1 run function scaffolding_rush:lobby/base_egg/give
execute as @e[type=minecraft:armor_stand,tag=baseTeam,tag=!villagerSpawned] run function scaffolding_rush:lobby/base_egg/spawn

# #button place base
# execute positioned 0 6 7 if entity @e[tag=LobbyBase,distance=..1] run function scaffolding_rush:lobby/base_egg/remove_at_button

#check player coordonates
execute unless score #game.end data matches 1 as @a[gamemode=!spectator,tag=!inTutorial] at @s run function scaffolding_rush:lobby/correct_coordinates

function scaffolding_rush:lobby/animation/__main__

# Light
execute as @e[type=marker,tag=lobbyLight] at @s if block ~ ~ ~ #scaffolding_rush:air run function scaffolding_rush:lobby/light

# Suffocation
execute as @a at @s if block ~ ~ ~ #scaffolding_rush:lobby_suffocation run function scaffolding_rush:lobby/suffocation

# Start game
execute unless score #admin.exist options matches 1 as @a[scores={bellring=1..}] run scoreboard players set @s trigger.start_game 1
execute if score #admin.exist options matches 1 as @a[scores={bellring=1..},tag=admin] run scoreboard players set @s trigger.start_game 1
execute if score #admin.exist options matches 1 as @a[scores={bellring=1..},tag=!admin] run tellraw @s[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Sorry, only ","color":"red"},{"selector":"@a[tag=admin]","color":"red"},{"text":" can start the game","color":"red"}]

execute if score #admin.exist options matches 1 as @a[scores={bellring=1..},tag=!admin] run tellraw @s[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Désolez, seuleument ","color":"red"},{"selector":"@a[tag=admin]","color":"red"},{"text":" peut démarrer la partie","color":"red"}]

scoreboard players reset @a bellring

# interaction
function scaffolding_rush:lobby/interaction/__main__

execute as @a[gamemode=survival] at @s if block ~ ~-0.01 ~ magma_block run kill @s

execute at @e[tag=LobbyProtection] run particle cloud ~ ~ ~ 0 0 0 0.1 3 force
execute as @e[tag=LobbyProtection] run kill @s

execute as @a[scores={trigger.tutorial=1}] run function scaffolding_rush:tutorial/join

tag @a[tag=!player.item.can_have_book] add player.item.can_have_book
scoreboard players enable @a[tag=!inTutorial] trigger.tutorial
function scaffolding_rush:lobby/protection/__main__
