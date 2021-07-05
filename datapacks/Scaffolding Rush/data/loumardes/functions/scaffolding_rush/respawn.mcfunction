tp @s[team=red] @e[type=villager,team=red, limit=1]
execute if entity @s[team=red] unless entity @e[type=villager,team=red] run gamemode spectator @s
tp @s[team=blue] @e[type=villager,team=blue, limit=1]
execute if entity @s[team=blue] unless entity @e[type=villager,team=blue] run gamemode spectator @s
tp @s[team=yellow] @e[type=villager,team=yellow, limit=1]
execute if entity @s[team=yellow] unless entity @e[type=villager,team=yellow] run gamemode spectator @s
tp @s[team=green] @e[type=villager,team=green, limit=1]
execute if entity @s[team=green] unless entity @e[type=villager,team=green] run gamemode spectator @s

gamemode spectator @s[team=!red, team=!green, team=!blue, team=!yellow]

tag @s remove has_egg
clear @s villager_spawn_egg

tag @s remove killed


