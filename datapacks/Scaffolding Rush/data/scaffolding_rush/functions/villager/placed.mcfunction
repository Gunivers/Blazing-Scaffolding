tag @s remove has_egg

execute as @a[gamemode=spectator,team=blue] if entity @a[scores={bluePlaced=1..}] if entity @e[type=villager,team=blue,limit=1] run function scaffolding_rush:villager/player_respawn/blue
execute as @a[gamemode=spectator,team=green] if entity @a[scores={greenPlaced=1..}] if entity @e[type=villager,team=green,limit=1] run function scaffolding_rush:villager/player_respawn/green
execute as @a[gamemode=spectator,team=red] if entity @a[scores={redPlaced=1..}] if entity @e[type=villager,team=red,limit=1] run function scaffolding_rush:villager/player_respawn/red
execute as @a[gamemode=spectator,team=yellow] if entity @a[scores={yellowPlaced=1..}] if entity @e[type=villager,team=yellow,limit=1] run function scaffolding_rush:villager/player_respawn/yellow

scoreboard players set @e[type=minecraft:villager] killed 0

execute as @e[type=minecraft:villager] run data merge entity @s {CustomName:""}

#Recup delay
tag @s[tag=!has_egg] add VillagerRecup
schedule function scaffolding_rush:villager/give/recup_delay 5t
