tellraw @a[team=blue] ["",{"text":"[SR] ","color":"gold"},{"text":"Your villager has died, you will get a new one in "},{"score":{"name":"VillagerRespawn","objective":"options"}},{"text":" seconds"}]
scoreboard players operation BlueVillagerRespawn global = VillagerRespawnTics global
give @a[team=blue] minecraft:ghast_spawn_egg{CanDestroy:["minecraft:scaffolding","#loumardes:lobby","#loumardes:tower"]}
