scoreboard players set @s redPlaced 0

teleport @s @e[type=villager,team=red,limit=1]
gamemode survival @s
execute as @s run function scaffolding_rush:game/give_items
