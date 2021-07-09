execute if entity @s[team=blue] run kill @e[type=minecraft:armor_stand,team=blue]
execute if entity @s[team=green] run kill @e[type=minecraft:armor_stand,team=green]
execute if entity @s[team=red] run kill @e[type=minecraft:armor_stand,team=red]
execute if entity @s[team=yellow] run kill @e[type=minecraft:armor_stand,team=yellow]

execute as @e[type=minecraft:villager] at @s unless entity @e[type=minecraft:armor_stand,distance=..1] run function loumardes:scaffolding_rush/clean_kill

scoreboard players set @a villagerClick 0
