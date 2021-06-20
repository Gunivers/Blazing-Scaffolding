#executed as a player of green team having talked to a villager

execute if entity @e[type=villager,distance=..6, team=green] run give @s villager_spawn_egg{EntityTag:{id:"minecraft:villager",Attributes:[{Base:0d,Name:"minecraft:generic.movement_speed"}],Team:green}}
execute as @e[type=villager,distance=..6, team=green] run function loumardes:scaffolding_rush/clean_kill
