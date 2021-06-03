#executed as a player of red team having talked to a villager

execute if entity @e[type=villager,distance=..6, team=red] run give @s villager_spawn_egg{EntityTag:{id:"minecraft:villager",Attributes:[{Base:0d,Name:"minecraft:generic.movement_speed"}],Team:red}}
tp @e[type=villager,distance=..6, team=red] 0 -99 0
