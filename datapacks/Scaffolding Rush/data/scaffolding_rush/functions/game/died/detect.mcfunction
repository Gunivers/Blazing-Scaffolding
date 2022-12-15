#Executed once on players and villagers with killed score equal to 1 or more
#kills villagers and detects if a player need to be respawned



gamemode spectator @s

#P
execute if entity @s[team=red] if entity @e[type=villager,tag=red_villager] run tag @s add Respawning
execute if entity @s[team=blue] if entity @e[type=villager,tag=blue_villager] run tag @s add Respawning
execute if entity @s[team=yellow] if entity @e[type=villager,tag=yellow_villager] run tag @s add Respawning
execute if entity @s[team=green] if entity @e[type=villager,tag=green_villager] run tag @s add Respawning
execute unless entity @s[tag=Respawning] at @s run playsound minecraft:entity.player.hurt_on_fire ambient @s ~ ~ ~

execute if entity @s run tellraw @a[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"selector":"@s"},{"text":" died in the lava","color":"gray"}]
execute if entity @s run tellraw @a[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"selector":"@s"},{"text":" est mort·e dans la lave","color":"gray"}]

tag @s remove has_egg
clear @s

scoreboard players set @s killed 0
scoreboard players operation @s[tag=Respawning] respawnTimeTics = RespawnDelayTics global
execute as @s[tag=Respawning] run schedule function scaffolding_rush:game/died/loop_tp 1t

#Recup delay
tag @s[gamemode=!spectator,tag=!has_egg] add VillagerRecup
schedule function scaffolding_rush:villager/give/recup_delay 15t

#fall distance
scoreboard players operation @s fallDistance /= #100 global
tellraw @a ["",{"selector":"@s"},{"text":" has fallen from "},{"score":{"name":"@s","objective":"fallDistance"}},{"text":" blocks"}]

#flag drop
execute if entity @s[tag=flag_carry] at @s run function scaffolding_rush:flag/drop/any
