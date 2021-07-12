teleport @s @e[type=villager,team=blue, limit=1]
gamemode survival @s
execute as @a[team=!] run function loumardes:scaffolding_rush/game/give_items
