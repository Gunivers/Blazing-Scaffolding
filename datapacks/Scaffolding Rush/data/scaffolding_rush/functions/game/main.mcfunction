
#Rise Lava
execute unless score LavaSpeedTics options matches 0 run scoreboard players add LavaCountdown global 1
execute if score LavaCountdown global >= LavaSpeedTics options run scoreboard players add LavaLevel global 1
execute if score PerformanceMode options matches 0 if score LavaCountdown global >= LavaSpeedTics options as @e[type=marker,name="ScR_LavaLevel"] at @s run function scaffolding_rush:lava/rise_globally
execute if score PerformanceMode options matches 1 as @a[gamemode=!spectator] at @s run function scaffolding_rush:lava/rise_locally
execute if score PerformanceMode options matches 1 as @e[type=villager,tag=!LobbyBase] at @s run function scaffolding_rush:lava/rise_locally

execute if score LavaCountdown global >= LavaSpeedTics options as @e[type=marker,name="ScR_Build"] at @s run function scaffolding_rush:game/air_replace
execute if score LavaCountdown global >= LavaSpeedTics options run scoreboard players set LavaCountdown global 0

#villager placed
execute if score GameRunning global matches 1 as @a[scores={bluePlaced=1..}] run function scaffolding_rush:villager/placed
execute if score GameRunning global matches 1 as @a[scores={greenPlaced=1..}] run function scaffolding_rush:villager/placed
execute if score GameRunning global matches 1 as @a[scores={redPlaced=1..}] run function scaffolding_rush:villager/placed
execute if score GameRunning global matches 1 as @a[scores={yellowPlaced=1..}] run function scaffolding_rush:villager/placed

execute as @a[gamemode=!spectator] at @s store result score @s[scores={killed=0}] YEntity run data get entity @s Pos[1]
execute as @a[gamemode=!spectator] at @s if block ~ ~-0.0001 ~ magma_block run scoreboard players add @s killed 1

execute as @e[type=villager,tag=!LobbyBase,team=!] at @s store result score @s[scores={killed=0}] YEntity run data get entity @s Pos[1]
execute as @e[type=villager,tag=!LobbyBase,team=!] at @s if block ~ ~-0.0001 ~ magma_block run scoreboard players add @s killed 1

execute as @e[type=marker,name="ScR_LavaLevel",limit=1] at @s run particle lava ~ ~ ~ 160 0 160 1 20 normal

#can place on
execute as @a[nbt=!{SelectedItem: {}},gamemode=adventure] run gamemode survival
execute as @a[nbt={SelectedItem: {}},gamemode=survival] run gamemode adventure

#bossbar
execute store result bossbar filling_lava value run scoreboard players get LavaCountdown global

#villager egg respawn
function scaffolding_rush:villager/respawn/villager_loss_detection

#respawn dead players
execute as @e[scores={killed=1..},tag=!Respawning] run function scaffolding_rush:died/detect

#warn villagers height
function scaffolding_rush:villager/warn

#inform the player that he has the egg
title @a[scores={language=0},tag=has_egg] actionbar ["",{"text":"||","obfuscated":true,"color":"gold"},{"text":" You have the egg!! Place it to respawn! ","color":"red"},{"text":"||","obfuscated":true,"color":"gold"}]
title @a[scores={language=1},tag=has_egg] actionbar ["",{"text":"||","obfuscated":true,"color":"gold"},{"text":" Vous avez l'œuf !! Placez-le pour réapparaître ! ","color":"red"},{"text":"||","obfuscated":true,"color":"gold"}]

execute as @e[type=minecraft:villager] at @s if entity @a[distance=..0.5] run effect give @s minecraft:invisibility 1 1 true

#ghostblocks
execute at @a run clone ~-1 ~-1 ~-1 ~1 ~ ~1 ~-1 ~-1 ~-1 replace force

execute as @e[type=minecraft:villager] at @s unless block ~ ~ ~ #scaffolding_rush:air unless block ~ ~ ~ minecraft:scaffolding run tp @s ~ ~0.1 ~

execute if score GameEnd global matches 0 unless score DevelopementMode global matches 1 if score RemainingTeam global matches ..1 run function scaffolding_rush:game/finish

execute as @a[tag=has_egg,nbt=!{Inventory: [{id: "minecraft:squid_spawn_egg"}]},nbt=!{Inventory: [{id: "minecraft:slime_spawn_egg"}]},nbt=!{Inventory: [{id: "minecraft:mooshroom_spawn_egg"}]},nbt=!{Inventory: [{id: "minecraft:blaze_spawn_egg"}]}] run function scaffolding_rush:villager/give/any

execute as @a[gamemode=!spectator] at @s run function scaffolding_rush:game/build_limit

execute as @a[team=blue,gamemode=spectator,tag=!TeamEliminated,limit=1] unless entity @a[team=blue,gamemode=!spectator] run function scaffolding_rush:game/elimination/blue
execute as @a[team=red,gamemode=spectator,tag=!TeamEliminated,limit=1] unless entity @a[team=red,gamemode=!spectator] run function scaffolding_rush:game/elimination/red
execute as @a[team=green,gamemode=spectator,tag=!TeamEliminated,limit=1] unless entity @a[team=green,gamemode=!spectator] run function scaffolding_rush:game/elimination/green
execute as @a[team=yellow,gamemode=spectator,tag=!TeamEliminated,limit=1] unless entity @a[team=yellow,gamemode=!spectator] run function scaffolding_rush:game/elimination/yellow
