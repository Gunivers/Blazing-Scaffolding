scoreboard players set @s yellowPlaced 0

teleport @s @e[type=villager,team=yellow,limit=1]
gamemode survival @s
execute as @s run function scaffolding_rush:game/give_items
