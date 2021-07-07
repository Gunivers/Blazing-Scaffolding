execute as @a[gamemode=spectator,team=green] run teleport @s @e[type=villager,team=green, limit=1]
execute as @a[gamemode=spectator,team=green] run gamemode survival @s

scoreboard players set @s greenPlaced 0
tag @s remove has_egg
