#Volcano system
execute if score Volcano options matches 1 run function scaffolding_rush:game/volcano/__main__

#starts to shrink the wordborder if enabled (need to be before time increment)
execute unless score WorldborderShrink options matches 0 if score GameTimeTics global = WorldborderStartTimeTics global run function scaffolding_rush:game/shrink_worldborder

#Time counter
scoreboard players add GameTimeTics global 1

#Rise Lava
execute unless score LavaSpeedTics options matches 0 run scoreboard players add LavaCountdown global 1
execute unless score LavaSpeedTics options matches 0 if score LavaCountdown global >= LavaSpeedTics options run scoreboard players add LavaLevel global 1
execute unless score LavaSpeedTics options matches 0 if score PerformanceMode options matches 0 if score LavaCountdown global >= LavaSpeedTics options as @e[type=marker,name="ScR_LavaLevel"] at @s run function scaffolding_rush:game/lava/rise_globally
execute unless score LavaSpeedTics options matches 0 if score PerformanceMode options matches 1 as @a[gamemode=!spectator] at @s run function scaffolding_rush:game/lava/rise_locally
execute unless score LavaSpeedTics options matches 0 if score PerformanceMode options matches 1 as @e[type=villager,tag=!LobbyBase] at @s run function scaffolding_rush:game/lava/rise_locally

#rise lasting bases
execute unless score lasting_bases options matches 0 unless score LavaSpeedTics options matches 0 if score LavaCountdown global >= LavaSpeedTics options run function scaffolding_rush:team/create_base/rise

execute unless score LavaSpeedTics options matches 0 if score LavaCountdown global >= LavaSpeedTics options as @e[type=marker,name="ScR_Build"] at @s run function scaffolding_rush:game/air_replace
execute unless score LavaSpeedTics options matches 0 if score LavaCountdown global >= LavaSpeedTics options run scoreboard players set LavaCountdown global 0

#villager placed
execute if score GameRunning global matches 1 as @a[scores={bluePlaced=1..}] run function scaffolding_rush:villager/placed
execute if score GameRunning global matches 1 as @a[scores={greenPlaced=1..}] run function scaffolding_rush:villager/placed
execute if score GameRunning global matches 1 as @a[scores={redPlaced=1..}] run function scaffolding_rush:villager/placed
execute if score GameRunning global matches 1 as @a[scores={yellowPlaced=1..}] run function scaffolding_rush:villager/placed

function scaffolding_rush:game/death/__main__

execute as @e[type=marker,name="ScR_LavaLevel",limit=1] at @s run particle lava ~ ~ ~ 160 0 160 1 20 normal

#can place on
execute as @a[nbt=!{SelectedItem: {}},gamemode=adventure] run gamemode survival
execute as @a[nbt={SelectedItem: {}},gamemode=survival] run gamemode adventure

#bossbar
execute store result bossbar filling_lava value run scoreboard players get LavaCountdown global

#Add new villagers to team manually in case of server issues
team join blue @e[type=villager,tag=new_villager,tag=blue_villager]
team join green @e[type=villager,tag=new_villager,tag=green_villager]
team join red @e[type=villager,tag=new_villager,tag=red_villager]
team join yellow @e[type=villager,tag=new_villager,tag=yellow_villager]
tag @e[type=villager,tag=new_villager] remove new_villager


execute as @a[gamemode=!spectator,tag=!Respawning,scores={killed=0}] at @s store result score @s XEntity run data get entity @s Pos[0]
execute as @a[gamemode=!spectator,tag=!Respawning,scores={killed=0}] at @s store result score @s YEntity run data get entity @s Pos[1]
execute as @a[gamemode=!spectator,tag=!Respawning,scores={killed=0}] at @s store result score @s ZEntity run data get entity @s Pos[2]

execute as @e[type=villager,tag=!LobbyBase] at @s store result score @s YEntity run data get entity @s Pos[1]

execute as @e[type=minecraft:villager] at @s if entity @a[distance=..0.5] run effect give @s minecraft:invisibility 1 1 true

execute as @e[type=minecraft:villager] at @s unless block ~ ~ ~ #scaffolding_rush:air unless block ~ ~ ~ #scaffolding_rush:scaffolding run tp @s ~ ~0.1 ~

# tag facing_villager
execute as @a[gamemode=!spectator,tag=!Respawning] at @s run function scaffolding_rush:villager/facing/test

#warn villagers height
execute as @e[type=villager] run function scaffolding_rush:villager/warn/test


# Action bar msg

#inform the player that he has the egg
title @a[scores={language=0},tag=has_egg] actionbar ["",{"text":"||","obfuscated":true,"color":"gold"},{"text":" You have the egg!! Place it to be able to respawn! ","color":"red"},{"text":"||","obfuscated":true,"color":"gold"}]
title @a[scores={language=1},tag=has_egg] actionbar ["",{"text":"||","obfuscated":true,"color":"gold"},{"text":" Vous avez l'œuf !! Placez-le pour pouvoir réapparaître ! ","color":"red"},{"text":"||","obfuscated":true,"color":"gold"}]

title @a[gamemode=!spectator,tag=!Respawning] times 0 2 0
execute as @a[gamemode=!spectator,tag=!Respawning,tag=facing_villager] run function scaffolding_rush:villager/facing/msg

execute unless entity @e[type=minecraft:villager,nbt={ActiveEffects:[{Id:25}]}] as @a[gamemode=!spectator,tag=!Respawning,tag=!facing_villager] run function scaffolding_rush:villager/warn/msg


# Test end of game
execute if score GameEnd global matches 0 run function scaffolding_rush:game/test_end

execute as @a[tag=has_egg,nbt=!{Inventory: [{id: "minecraft:squid_spawn_egg"}]},nbt=!{Inventory: [{id: "minecraft:slime_spawn_egg"}]},nbt=!{Inventory: [{id: "minecraft:mooshroom_spawn_egg"}]},nbt=!{Inventory: [{id: "minecraft:blaze_spawn_egg"}]}] run function scaffolding_rush:villager/egg/give/any

execute as @a[gamemode=!spectator] at @s run function scaffolding_rush:game/build_limit

# Elimination if team exist, unless players in game, unless players are respawning
execute if entity @a[team=blue,tag=!TeamEliminated] unless entity @a[team=blue,gamemode=!spectator] unless entity @a[team=blue,tag=Respawning] unless entity @e[type=villager,tag=blue_villager] run function scaffolding_rush:game/elimination/blue
execute if entity @a[team=green,tag=!TeamEliminated] unless entity @a[team=green,gamemode=!spectator] unless entity @a[team=green,tag=Respawning] unless entity @e[type=villager,tag=green_villager] run function scaffolding_rush:game/elimination/green
execute if entity @a[team=red,tag=!TeamEliminated] unless entity @a[team=red,gamemode=!spectator] unless entity @a[team=red,tag=Respawning] unless entity @e[type=villager,tag=red_villager] run function scaffolding_rush:game/elimination/red
execute if entity @a[team=yellow,tag=!TeamEliminated] unless entity @a[team=yellow,gamemode=!spectator] unless entity @a[team=yellow,tag=Respawning] unless entity @e[type=villager,tag=yellow_villager] run function scaffolding_rush:game/elimination/yellow

# Revive players from changed gamemode
execute if entity @a[team=blue,tag=TeamEliminated,gamemode=!spectator] run tag @a[team=blue] remove TeamEliminated
execute if entity @a[team=green,tag=TeamEliminated,gamemode=!spectator] run tag @a[team=gree] remove TeamEliminated
execute if entity @a[team=red,tag=TeamEliminated,gamemode=!spectator] run tag @a[team=red] remove TeamEliminated
execute if entity @a[team=yellow,tag=TeamEliminated,gamemode=!spectator] run tag @a[team=yellow] remove TeamEliminated

# Count active teams
scoreboard players set RemainingTeam global 0
execute if entity @a[team=blue,tag=!TeamEliminated] run scoreboard players add RemainingTeam global 1
execute if entity @a[team=green,tag=!TeamEliminated] run scoreboard players add RemainingTeam global 1
execute if entity @a[team=red,tag=!TeamEliminated] run scoreboard players add RemainingTeam global 1
execute if entity @a[team=yellow,tag=!TeamEliminated] run scoreboard players add RemainingTeam global 1

#fall distance
scoreboard players reset @a[nbt={OnGround:1b}] fallDistance

#flag takeover gamemode
execute unless score flag_take_over options matches 0 if score FlagTakeOverCountdown global >= FlagTakeOverSpawnInterval options run function scaffolding_rush:flag/new_spreaded
execute unless score flag_take_over options matches 0 run scoreboard players add FlagTakeOverCountdown global 1

#remove flags in lava
execute unless score flag_take_over options matches 0 as @e[type=armor_stand,tag=Flag] at @s if block ~ ~2 ~ magma_block run kill @s

#grabbing flag
execute unless score flag_take_over options matches 0 as @a[gamemode=adventure,tag=!flag_carry] at @s positioned ~ ~-2 ~ if entity @e[type=armor_stand,tag=Flag,distance=..2] run function scaffolding_rush:flag/grab/any
execute unless score flag_take_over options matches 0 as @a[gamemode=survival,tag=!flag_carry] at @s positioned ~ ~-2 ~ if entity @e[type=armor_stand,tag=Flag,distance=..2] run function scaffolding_rush:flag/grab/any

#depositing flag
execute unless score flag_take_over options matches 0 as @a[tag=flag_carry,team=blue] at @s if entity @e[type=villager,distance=..1, team=blue] run function scaffolding_rush:flag/claim/team/blue
execute unless score flag_take_over options matches 0 as @a[tag=flag_carry,team=red] at @s if entity @e[type=villager,distance=..1,team=red] run function scaffolding_rush:flag/claim/team/red
execute unless score flag_take_over options matches 0 as @a[tag=flag_carry,team=green] at @s if entity @e[type=villager,distance=..1,team=green] run function scaffolding_rush:flag/claim/team/green
execute unless score flag_take_over options matches 0 as @a[tag=flag_carry,team=yellow] at @s if entity @e[type=villager,distance=..1,team=yellow] run function scaffolding_rush:flag/claim/team/yellow
