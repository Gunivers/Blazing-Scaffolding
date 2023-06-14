
execute as @e[type=villager,tag=game_villager] at @s store result score @s XEntity run data get entity @s Pos[0]
execute as @e[type=villager,tag=game_villager] at @s store result score @s YEntity run data get entity @s Pos[1]
execute as @e[type=villager,tag=game_villager] at @s store result score @s ZEntity run data get entity @s Pos[2]

# Clear unconsistent villagers
execute as @e[type=villager,nbt=!{Age:0}] run function scaffolding_rush:clean_kill

#Add new villagers to team manually in case of server issues
team join blue @e[type=villager,tag=new_villager,tag=blue_villager,tag=game_villager]
team join green @e[type=villager,tag=new_villager,tag=green_villager,tag=game_villager]
team join red @e[type=villager,tag=new_villager,tag=red_villager,tag=game_villager]
team join yellow @e[type=villager,tag=new_villager,tag=yellow_villager,tag=game_villager]
tag @e[type=villager,tag=new_villager,tag=game_villager] remove new_villager

#inform the player that he has the egg
title @a[scores={language=0},tag=has_egg] actionbar ["",{"text":"||","obfuscated":true,"color":"gold"},{"text":" You have the egg!! Place it to be able to respawn! ","color":"red"},{"text":"||","obfuscated":true,"color":"gold"}]
title @a[scores={language=1},tag=has_egg] actionbar ["",{"text":"||","obfuscated":true,"color":"gold"},{"text":" Vous avez l'œuf !! Placez-le pour pouvoir réapparaître ! ","color":"red"},{"text":"||","obfuscated":true,"color":"gold"}]

# tag facing_villager
execute as @a[gamemode=!spectator,tag=!Respawning] at @s run function scaffolding_rush:game/villager/facing/test

#warn villagers height
execute as @e[type=villager,tag=game_villager] run function scaffolding_rush:game/villager/warn/test

execute if score MovableVillager options matches 1 as @a[gamemode=!spectator,tag=!Respawning,tag=facing_villager] run function scaffolding_rush:game/villager/facing/msg

execute if score MovableVillager options matches 1 unless entity @e[type=minecraft:villager,tag=game_villager,nbt={ActiveEffects:[{Id:25}]}] as @a[gamemode=!spectator,tag=!Respawning,tag=!facing_villager] run function scaffolding_rush:game/villager/warn/msg_actionbar
execute if score MovableVillager options matches 1 unless entity @e[type=minecraft:villager,tag=game_villager,nbt={ActiveEffects:[{Id:25}]}] as @a[gamemode=!spectator,tag=!Respawning] run function scaffolding_rush:game/villager/warn/msg_title

function scaffolding_rush:game/villager/health_bar

execute as @e[type=minecraft:villager,tag=game_villager] at @s if entity @a[distance=..0.5] run effect give @s minecraft:invisibility 1 1 true

execute as @e[type=minecraft:villager,tag=game_villager] at @s unless block ~ ~ ~ #scaffolding_rush:air unless block ~ ~ ~ #scaffolding_rush:scaffolding run tp @s ~ ~0.1 ~


# Protect vilalger against arrows
execute as @e[type=minecraft:villager,tag=game_villager] at @s positioned ~ ~1 ~ run function scaffolding_rush:game/villager/arrow_shield


#villager placed
execute if score GameRunning global matches 1 as @a[scores={bluePlaced=1..}] run function scaffolding_rush:game/villager/placed
execute if score GameRunning global matches 1 as @a[scores={greenPlaced=1..}] run function scaffolding_rush:game/villager/placed
execute if score GameRunning global matches 1 as @a[scores={redPlaced=1..}] run function scaffolding_rush:game/villager/placed
execute if score GameRunning global matches 1 as @a[scores={yellowPlaced=1..}] run function scaffolding_rush:game/villager/placed


execute as @a[tag=has_egg,nbt=!{Inventory: [{id: "minecraft:squid_spawn_egg"}]},nbt=!{Inventory: [{id: "minecraft:slime_spawn_egg"}]},nbt=!{Inventory: [{id: "minecraft:mooshroom_spawn_egg"}]},nbt=!{Inventory: [{id: "minecraft:blaze_spawn_egg"}]}] run function scaffolding_rush:game/villager/egg/give/any

