execute if score DevelopementMode data matches 1 run say villager/placed

tag @s remove player.item.have_egg

execute as @e[type=marker,tag=VillagerSpawnerBlue] at @s run function scaffolding_rush:game/villager/summon/blue
execute as @e[type=marker,tag=VillagerSpawnerGreen] at @s run function scaffolding_rush:game/villager/summon/green
execute as @e[type=marker,tag=VillagerSpawnerRed] at @s run function scaffolding_rush:game/villager/summon/red
execute as @e[type=marker,tag=VillagerSpawnerYellow] at @s run function scaffolding_rush:game/villager/summon/yellow

execute as @a[gamemode=spectator,team=blue] if entity @a[scores={listener.use.blue_spawn_egg=1..}] if entity @e[type=villager,tag=blue_villager,limit=1] run function scaffolding_rush:game/villager/player_respawn/blue
execute as @a[gamemode=spectator,team=green] if entity @a[scores={listener.use.green_spawn_egg=1..}] if entity @e[type=villager,tag=green_villager,limit=1] run function scaffolding_rush:game/villager/player_respawn/green
execute as @a[gamemode=spectator,team=red] if entity @a[scores={listener.use.red_spawn_egg=1..}] if entity @e[type=villager,tag=red_villager,limit=1] run function scaffolding_rush:game/villager/player_respawn/red
execute as @a[gamemode=spectator,team=yellow] if entity @a[scores={listener.use.yellow_spawn_egg=1..}] if entity @e[type=villager,tag=yellow_villager,limit=1] run function scaffolding_rush:game/villager/player_respawn/yellow

scoreboard players set @e[type=minecraft:villager] listener.death 0

execute as @e[type=minecraft:villager] run data merge entity @s {CustomName:""}

#Recup delay
tag @s[tag=!player.item.have_egg] add VillagerRecup
schedule function scaffolding_rush:game/villager/egg/give/recup_delay 5t

scoreboard players set @a listener.use.blue_spawn_egg 0
scoreboard players set @a listener.use.green_spawn_egg 0
scoreboard players set @a listener.use.red_spawn_egg 0
scoreboard players set @a listener.use.yellow_spawn_egg 0