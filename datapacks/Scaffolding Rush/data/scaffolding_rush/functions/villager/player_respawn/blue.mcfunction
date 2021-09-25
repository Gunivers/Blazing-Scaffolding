scoreboard players set @s bluePlaced 0

teleport @s @e[type=villager,team=blue,limit=1]
gamemode survival @s
execute as @s run function scaffolding_rush:game/give_items
