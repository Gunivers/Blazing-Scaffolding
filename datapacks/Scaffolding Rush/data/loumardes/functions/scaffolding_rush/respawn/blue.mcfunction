execute as @a[gamemode=spectator,team=blue] run teleport @s @e[type=villager,team=blue, limit=1]
execute as @a[gamemode=spectator,team=blue] run gamemode survival @s

scoreboard players set @s bluePlaced 0
tag @s remove has_egg
