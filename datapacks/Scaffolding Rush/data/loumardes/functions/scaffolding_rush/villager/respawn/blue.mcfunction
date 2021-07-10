execute as @a[team=blue] run function loumardes:scaffolding_rush/villager/respawn/msg_dead

scoreboard players operation BlueVillagerRespawn global = VillagerRespawnTics global

execute as @a[team=blue] run function loumardes:scaffolding_rush/villager/respawn/egg_counter/give
execute as @a[team=blue] run schedule function loumardes:scaffolding_rush/villager/respawn/egg_counter/blue 1s
