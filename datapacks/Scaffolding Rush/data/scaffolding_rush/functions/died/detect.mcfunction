#kill villager
execute if entity @s[type=minecraft:villager] at @s run playsound minecraft:entity.player.hurt_on_fire ambient @a ~ ~ ~
execute if entity @s[type=minecraft:villager] run function scaffolding_rush:clean_kill

gamemode spectator @s[tag=Respawning]

execute if entity @s[team=red] unless entity @e[type=villager,team=red] run gamemode spectator @s
execute if entity @s[team=blue] unless entity @e[type=villager,team=blue] run gamemode spectator @s
execute if entity @s[team=yellow] unless entity @e[type=villager,team=yellow] run gamemode spectator @s
execute if entity @s[team=green] unless entity @e[type=villager,team=green] run gamemode spectator @s
execute unless entity @s[tag=Respawning] at @s run playsound minecraft:entity.player.hurt_on_fire ambient @s ~ ~ ~

execute if entity @s[type=minecraft:player,tag=!Respawning] run tellraw @a[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"selector":"@s"},{"text":" died in the lava","color":"gray"}]
execute if entity @s[type=minecraft:player,tag=!Respawning] run tellraw @a[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"selector":"@s"},{"text":" est mort·e dans la lave","color":"gray"}]

tag @s remove has_egg
clear @s

tag @s[gamemode=!spectator] add Respawning
tag @s[gamemode=spectator] remove Respawning

scoreboard players set @s[gamemode=spectator] killed 0
scoreboard players operation @s[gamemode=!spectator] killed = RespawnDelayTics global
execute as @s[gamemode=!spectator] run schedule function scaffolding_rush:died/loop_tp 1t

#Recup delay
tag @s[gamemode=!spectator,tag=!has_egg] add VillagerRecup
schedule function scaffolding_rush:villager/give/recup_delay 15t
