#Executed once on players with killed score equal to 1 or more
#detects if this player need to be respawned

#P
execute if entity @s[team=red] if entity @e[type=villager, tag=red_villager] run tag @s add Respawning
execute if entity @s[team=blue] if entity @e[type=villager,tag=blue_villager] run tag @s add Respawning
execute if entity @s[team=yellow] if entity @e[type=villager, tag=yellow_villager] run tag @s add Respawning
execute if entity @s[team=green] if entity @e[type=villager,tag=green_villager] run tag @s add Respawning
execute unless entity @s[tag=Respawning] at @s run playsound minecraft:entity.player.hurt_on_fire ambient @s ~ ~ ~

execute if entity @s run tellraw @a[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"selector":"@s"},{"text":" died in the lava","color":"gray"}]
execute if entity @s run tellraw @a[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"selector":"@s"},{"text":" est mort·e dans la lave","color":"gray"}]

tag @s remove has_egg
clear @s

gamemode spectator @s[tag=!Respawning]

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
tag @s remove flag_carry
execute if entity @s[tag=whiteFlag] at @s run function scaffolding_rush:flag/drop/white
tag @s remove whiteFlag
