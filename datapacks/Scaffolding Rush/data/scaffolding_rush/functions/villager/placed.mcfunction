execute if score DevelopementMode data matches 1 run say villager/placed

tag @s remove player.item.have_egg

execute as @e[type=marker,tag=VillagerSpawnerBlue] at @s run function scaffolding_rush:villager/summon/blue
execute as @e[type=marker,tag=VillagerSpawnerGreen] at @s run function scaffolding_rush:villager/summon/green
execute as @e[type=marker,tag=VillagerSpawnerRed] at @s run function scaffolding_rush:villager/summon/red
execute as @e[type=marker,tag=VillagerSpawnerYellow] at @s run function scaffolding_rush:villager/summon/yellow

execute as @a[gamemode=spectator,team=blue] if entity @a[scores={listener.use.blue_spawn_egg=1..}] if entity @e[type=villager,tag=blue_villager,limit=1] run function scaffolding_rush:villager/player_respawn/blue
execute as @a[gamemode=spectator,team=green] if entity @a[scores={listener.use.green_spawn_egg=1..}] if entity @e[type=villager,tag=green_villager,limit=1] run function scaffolding_rush:villager/player_respawn/green
execute as @a[gamemode=spectator,team=red] if entity @a[scores={listener.use.red_spawn_egg=1..}] if entity @e[type=villager,tag=red_villager,limit=1] run function scaffolding_rush:villager/player_respawn/red
execute as @a[gamemode=spectator,team=yellow] if entity @a[scores={listener.use.yellow_spawn_egg=1..}] if entity @e[type=villager,tag=yellow_villager,limit=1] run function scaffolding_rush:villager/player_respawn/yellow

execute if score #lobby.active data matches 1 \
        as @e[type=villager,tag=respawn_villager] \
        at @s \
        unless block ~ ~-1 ~ #scaffolding_rush:sand \
        unless block ~ ~-1 ~ #scaffolding_rush:scaffolding \
        unless entity @e[tag=base.maker,distance=..0.5] \
    run function scaffolding_rush:villager/base/build

scoreboard players set @e[type=minecraft:villager] listener.death 0

execute as @e[type=minecraft:villager] run data merge entity @s {CustomName:""}

#Recup delay
tellraw @s[scores={option_language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Villager placed. You can't move it during the next ","color":"gray"},{"text":"5","color":"gold"},{"text":" seconds","color":"gray"}]
tellraw @s[scores={option_language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Villager placé. Vous ne pouvez plus le bouger durant les ","color":"gray"},{"text":"5","color":"gold"},{"text":" prochaines secondes","color":"gray"}]

execute at @s run playsound minecraft:entity.villager.celebrate master @a[distance=..30] ~ ~ ~ 1 1 0

scoreboard players set @s player.pick_villager_cooldown 100

execute if entity @s[team=red] run scoreboard players set @a[team=red] player.item.spawn_egg.timer 0
execute if entity @s[team=blue] run scoreboard players set @a[team=blue] player.item.spawn_egg.timer 0
execute if entity @s[team=green] run scoreboard players set @a[team=green] player.item.spawn_egg.timer 0
execute if entity @s[team=yellow] run scoreboard players set @a[team=yellow] player.item.spawn_egg.timer 0


scoreboard players set @a listener.use.blue_spawn_egg 0
scoreboard players set @a listener.use.green_spawn_egg 0
scoreboard players set @a listener.use.red_spawn_egg 0
scoreboard players set @a listener.use.yellow_spawn_egg 0