execute as @a[gamemode=spectator,team=yellow] run teleport @s @e[type=villager,team=yellow, limit=1]
execute as @a[gamemode=spectator,team=yellow] run gamemode survival @s

scoreboard players set @s yellowPlaced 0
tag @s remove has_egg
