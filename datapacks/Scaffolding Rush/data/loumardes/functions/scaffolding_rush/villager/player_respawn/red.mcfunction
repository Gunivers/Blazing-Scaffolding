teleport @s @e[type=villager,team=red, limit=1]
gamemode survival @s
give @s scaffolding
execute as @a[team=!] run function loumardes:scaffolding_rush/game/give_items
