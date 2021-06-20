#executed as a player of yellow team having talked to a villager

execute if entity @e[type=villager,distance=..6, team=yellow] run give @s villager_spawn_egg{EntityTag:{id:"minecraft:villager",Attributes:[{Base:0d,Name:"minecraft:generic.movement_speed"}],Team:yellow}}
execute as @e[type=villager,distance=..6, team=yellow] run function loumardes:scaffolding_rush/clean_kill
