execute if score DevelopementMode global matches 1 run say villager/placed

tag @s remove has_egg

execute as @e[tag=VillagerSpawnerBlue] at @s run function scaffolding_rush:villager/summon/blue
execute as @e[tag=VillagerSpawnerGreen] at @s run function scaffolding_rush:villager/summon/green
execute as @e[tag=VillagerSpawnerRed] at @s run function scaffolding_rush:villager/summon/red
execute as @e[tag=VillagerSpawnerYellow] at @s run function scaffolding_rush:villager/summon/yellow

execute as @a[gamemode=spectator,team=blue] if entity @a[scores={bluePlaced=1..}] if entity @e[type=villager,tag=blue_villager,limit=1] run function scaffolding_rush:villager/player_respawn/blue
execute as @a[gamemode=spectator,team=green] if entity @a[scores={greenPlaced=1..}] if entity @e[type=villager,tag=green_villager,limit=1] run function scaffolding_rush:villager/player_respawn/green
execute as @a[gamemode=spectator,team=red] if entity @a[scores={redPlaced=1..}] if entity @e[type=villager,tag=red_villager,limit=1] run function scaffolding_rush:villager/player_respawn/red
execute as @a[gamemode=spectator,team=yellow] if entity @a[scores={yellowPlaced=1..}] if entity @e[type=villager,tag=yellow_villager,limit=1] run function scaffolding_rush:villager/player_respawn/yellow

scoreboard players set @e[type=minecraft:villager] killed 0

execute as @e[type=minecraft:villager] run data merge entity @s {CustomName:""}

#Recup delay
tag @s[tag=!has_egg] add VillagerRecup
schedule function scaffolding_rush:villager/give/recup_delay 5t

scoreboard players set @a bluePlaced 0
scoreboard players set @a greenPlaced 0
scoreboard players set @a redPlaced 0
scoreboard players set @a yellowPlaced 0