
execute as @e[type=villager] at @s anchored eyes facing entity @p[distance=0.5..] eyes run tp @s ~ ~ ~ ~ ~

tag @e[type=villager,tag=respawn_villager,x=0,y=100,z=0,distance=..500] add lobby_villager
tag @e[type=villager,tag=respawn_villager,x=1000,y=100,z=1000,distance=..500] add game_villager 

# Death Management ------------------------------------------------------------

#Kill villagers in lava, or save them if they are invulnerable
execute unless score #villager.cannot_fall_in_lava options matches 0 as @e[type=villager,tag=respawn_villager] at @s if block ~ ~-1.8 ~ magma_block run function scaffolding_rush:game/prevent_villager_from_falling_in_lava
execute unless score #villager.cannot_fall_in_lava options matches 0 as @e[type=villager,tag=respawn_villager] at @s if block ~ ~-1 ~ magma_block run function scaffolding_rush:game/prevent_villager_from_falling_in_lava

# Kill Villager behind WB
execute as @e[type=villager,tag=respawn_villager] if score @s pos.x > WBbyTwo data run function scaffolding_rush:villager/death/kill
execute as @e[type=villager,tag=respawn_villager] if score @s pos.x < -WBbyTwo data run function scaffolding_rush:villager/death/kill
execute as @e[type=villager,tag=respawn_villager] if score @s pos.z > WBbyTwo data run function scaffolding_rush:villager/death/kill
execute as @e[type=villager,tag=respawn_villager] if score @s pos.z < -WBbyTwo data run function scaffolding_rush:villager/death/kill

# Check if villager is alive
function scaffolding_rush:villager/death/villager_loss_detection





# Clear unconsistent villagers
execute as @e[type=villager,nbt=!{Age:0}] run function utils:clean_kill

#Add new villagers to team manually in case of server issues
team join blue @e[type=villager,tag=new_villager,tag=blue_villager,tag=respawn_villager]
team join green @e[type=villager,tag=new_villager,tag=green_villager,tag=respawn_villager]
team join red @e[type=villager,tag=new_villager,tag=red_villager,tag=respawn_villager]
team join yellow @e[type=villager,tag=new_villager,tag=yellow_villager,tag=respawn_villager]
tag @e[type=villager,tag=new_villager,tag=respawn_villager] remove new_villager

#inform the player that he has the egg
title @a[scores={option_language=0},tag=player.item.have_egg] actionbar ["",{"text":"||","obfuscated":true,"color":"gold"},{"text":" You have the egg!! Place it to be able to respawn! ","color":"red"},{"text":"||","obfuscated":true,"color":"gold"}]
title @a[scores={option_language=1},tag=player.item.have_egg] actionbar ["",{"text":"||","obfuscated":true,"color":"gold"},{"text":" Vous avez l'œuf !! Placez-le pour pouvoir réapparaître ! ","color":"red"},{"text":"||","obfuscated":true,"color":"gold"}]

# tag facing_villager
execute as @a[gamemode=!spectator,tag=!Respawning] at @s run function scaffolding_rush:villager/facing/test

#warn villagers height
execute as @e[type=villager,tag=respawn_villager] run function scaffolding_rush:villager/warn/test

execute if score #villager.movable options matches 1 as @a[gamemode=!spectator,tag=!Respawning,tag=facing_villager] run function scaffolding_rush:villager/facing/msg

execute if score #villager.movable options matches 1 if score #game.running data matches 1 unless entity @e[type=minecraft:villager,tag=respawn_villager,nbt={ActiveEffects:[{Id:25}]}] as @a[gamemode=!spectator,tag=!Respawning,tag=!facing_villager] run function scaffolding_rush:villager/warn/msg_actionbar
execute if score #villager.movable options matches 1 if score #game.running data matches 1 unless entity @e[type=minecraft:villager,tag=respawn_villager,nbt={ActiveEffects:[{Id:25}]}] as @a[gamemode=!spectator,tag=!Respawning] run function scaffolding_rush:villager/warn/msg_title

function scaffolding_rush:villager/health_bar

execute as @e[type=minecraft:villager,tag=respawn_villager] at @s if entity @a[team=!spectator,tag=!player.is_dead,distance=..0.5] run effect give @s minecraft:invisibility 1 1 true

execute as @e[type=minecraft:villager,tag=respawn_villager] at @s unless block ~ ~ ~ #scaffolding_rush:air unless block ~ ~ ~ #scaffolding_rush:scaffolding run tp @s ~ ~0.1 ~ ~ ~

execute as @e[tag=base.marker] at @s unless entity @e[type=villager,tag=respawn_villager,distance=..0.5] run function scaffolding_rush:villager/base/destroy

#villager placed
execute as @a[scores={listener.use.blue_spawn_egg=1..}] run function scaffolding_rush:villager/placed
execute as @a[scores={listener.use.green_spawn_egg=1..}] run function scaffolding_rush:villager/placed
execute as @a[scores={listener.use.red_spawn_egg=1..}] run function scaffolding_rush:villager/placed
execute as @a[scores={listener.use.yellow_spawn_egg=1..}] run function scaffolding_rush:villager/placed


execute as @a[tag=player.item.have_egg,nbt=!{Inventory: [{id: "minecraft:squid_spawn_egg"}]},nbt=!{Inventory: [{id: "minecraft:slime_spawn_egg"}]},nbt=!{Inventory: [{id: "minecraft:mooshroom_spawn_egg"}]},nbt=!{Inventory: [{id: "minecraft:blaze_spawn_egg"}]}] run function scaffolding_rush:villager/egg/give/any

execute if score #lobby.active data matches 1 run effect give @e[type=villager,tag=respawn_villager] glowing infinite 1 true
execute if score #lobby.active data matches 1 run effect give @e[type=villager,tag=respawn_villager] resistance infinite 127 true

execute as @e[type=minecraft:villager,tag=respawn_villager] at @s positioned ~ ~1 ~ run function scaffolding_rush:villager/arrow_shield/trigger
function scaffolding_rush:villager/death/trigger