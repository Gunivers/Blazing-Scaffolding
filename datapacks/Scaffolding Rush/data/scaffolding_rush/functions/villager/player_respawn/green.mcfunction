scoreboard players set @s greenPlaced 0

teleport @s @e[type=villager,team=green,limit=1]
gamemode survival @s
execute as @s run function scaffolding_rush:game/give_items
