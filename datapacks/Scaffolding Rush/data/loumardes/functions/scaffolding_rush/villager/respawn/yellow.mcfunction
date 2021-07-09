tellraw @a[team=yellow] ["",{"text":"[SR] ","color":"gold"},{"text":"Your villager has died, you will get a new one in "},{"score":{"name":"VillagerRespawn","objective":"options"}},{"text":" seconds"}]
scoreboard players operation YellowVillagerRespawn global = VillagerRespawnTics global
give @a[team=yellow] minecraft:ghast_spawn_egg{CanDestroy:["minecraft:scaffolding","#loumardes:lobby","#loumardes:tower"]}
