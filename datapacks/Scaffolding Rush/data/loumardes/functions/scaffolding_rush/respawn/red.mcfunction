execute as @a[gamemode=spectator,team=red] run teleport @s @e[type=villager,team=red, limit=1]
execute as @a[gamemode=spectator,team=red] run gamemode survival @s

scoreboard players set @s redPlaced 0
tag @s remove has_egg
