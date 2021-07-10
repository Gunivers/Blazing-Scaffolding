execute as @a[team=green] run function loumardes:scaffolding_rush/villager/respawn/msg_dead

scoreboard players operation GreenVillagerRespawn global = VillagerRespawnTics global

execute as @a[team=green] run function loumardes:scaffolding_rush/villager/respawn/egg_counter/give
execute as @a[team=green] run schedule function loumardes:scaffolding_rush/villager/respawn/egg_counter/green 1s
