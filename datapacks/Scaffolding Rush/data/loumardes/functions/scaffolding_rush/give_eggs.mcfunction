#Function called in the Reset

clear @a villager_spawn_egg
give @a[team=blue,sort=random,limit=1] villager_spawn_egg{EntityTag:{id:"minecraft:villager",Attributes:[{Base:0d,Name:"minecraft:generic.movement_speed"}],Team:blue}}
give @a[team=red,sort=random,limit=1] villager_spawn_egg{EntityTag:{id:"minecraft:villager",Attributes:[{Base:0d,Name:"minecraft:generic.movement_speed"}],Team:red}}
