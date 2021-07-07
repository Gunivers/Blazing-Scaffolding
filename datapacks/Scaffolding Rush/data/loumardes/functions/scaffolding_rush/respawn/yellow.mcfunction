execute as @a[gamemode=spectator,team=yellow] run gamemode survival @s
execute as @a[gamemode=spectator,team=yellow] run teleport @s @e[type=villager,team=yellow, limit=1]
scoreboard players set @s yellowPlaced 0
tag @s remove has_egg
