#executed as a player of red team having talked to a villager

execute if entity @e[type=villager,distance=..6, team=red] run give @s villager_spawn_egg{EntityTag:{id:"minecraft:villager",NoAI:1b,Team:red}}
tp @e[type=villager,distance=..6, team=red] 0 -99 0
