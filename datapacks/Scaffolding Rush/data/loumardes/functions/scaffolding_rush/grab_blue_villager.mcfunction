#executed as a player of blue team having talked to a villager

execute if entity @e[type=villager,distance=..6, team=blue] run give @s villager_spawn_egg{EntityTag:{id:"minecraft:villager",Attributes:[{Base:0d,Name:"minecraft:generic.movement_speed"}],Team:blue}}
execute as @e[type=villager,distance=..6, team=blue] run function loumardes:scaffolding_rush/clean_kill
