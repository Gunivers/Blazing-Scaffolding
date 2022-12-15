# Kill player
execute if score DevelopementMode global matches 1 run say game/death/player/kill

# Check if player can respawn
execute if entity @s[team=red] if entity @e[type=villager,team=red] run tag @s add Respawning
execute if entity @s[team=blue] if entity @e[type=villager,team=blue] run tag @s add Respawning
execute if entity @s[team=yellow] if entity @e[type=villager,team=yellow] run tag @s add Respawning
execute if entity @s[team=green] if entity @e[type=villager,team=green] run tag @s add Respawning

execute if entity @s run tellraw @a[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"selector":"@s"},{"text":" died in the lava","color":"gray"}]
execute if entity @s run tellraw @a[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"selector":"@s"},{"text":" est mort·e dans la lave","color":"gray"}]

tag @s remove has_egg
clear @s
gamemode spectator @s
scoreboard players set @s killed 0

# When player can respawn
execute if entity @s[tag=Respawning] run function scaffolding_rush:game/death/player/respawn
# When player can't respawn
execute unless entity @s[tag=Respawning] run function scaffolding_rush:game/death/player/die

#Recup delay
tag @s[gamemode=!spectator,tag=!has_egg] add VillagerRecup
schedule function scaffolding_rush:villager/give/recup_delay 15t
