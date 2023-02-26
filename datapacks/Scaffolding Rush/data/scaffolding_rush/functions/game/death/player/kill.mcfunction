# Kill player
execute if score DevelopementMode global matches 1 run say game/death/player/kill

# Check if player can respawn
execute if entity @s[team=red] if entity @e[type=villager,tag=red_villager] run tag @s add Respawning
execute if entity @s[team=blue] if entity @e[type=villager,tag=blue_villager] run tag @s add Respawning
execute if entity @s[team=yellow] if entity @e[type=villager,tag=yellow_villager] run tag @s add Respawning
execute if entity @s[team=green] if entity @e[type=villager,tag=green_villager] run tag @s add Respawning

# Drop the flag
summon marker ~ ~ ~ {Tags:["last_death"]}
execute store result entity @e[type=marker,tag=last_death,limit=1] Pos[0] double 1.0 run scoreboard players get @s XEntity
execute store result entity @e[type=marker,tag=last_death,limit=1] Pos[1] double 1.0 run scoreboard players get @s YEntity
execute store result entity @e[type=marker,tag=last_death,limit=1] Pos[2] double 1.0 run scoreboard players get @s ZEntity
execute unless score flag_take_over options matches 0 if entity @s[tag=flag_carry] positioned as @e[type=marker,tag=last_death,limit=1] run function scaffolding_rush:flag/drop/any
kill @e[type=marker,tag=last_death]

tag @s remove has_egg
clear @s
gamemode spectator @s
scoreboard players set @s killed 0
effect give @s instant_health 1 20

# When player can respawn
execute if entity @s[tag=Respawning] run function scaffolding_rush:game/death/player/respawn
# When player can't respawn
execute unless entity @s[tag=Respawning] run function scaffolding_rush:game/death/player/die

#Recup delay
tag @s[gamemode=!spectator,tag=!has_egg] add VillagerRecup
schedule function scaffolding_rush:villager/egg/give/recup_delay 15t
