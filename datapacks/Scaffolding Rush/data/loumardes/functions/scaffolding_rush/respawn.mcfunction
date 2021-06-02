execute if entity @s if entity @e[type=villager,team=red] run tp @s @e[type=villager,team=red, limit=1]
execute if entity @s unless entity @e[type=villager,team=red] run gamemode spectator @s
execute if entity @s if entity @e[type=villager,team=blue] run tp @s @e[type=villager,team=blue, limit=1]
execute if entity @s unless entity @e[type=villager,team=blue] run gamemode spectator @s


