execute as @a[team=yellow] run function loumardes:scaffolding_rush/villager/respawn/msg_dead

scoreboard players operation YellowVillagerRespawn global = VillagerRespawnTics global

execute as @a[team=yellow] run function loumardes:scaffolding_rush/villager/respawn/egg_counter/give
execute as @a[team=yellow] run schedule function loumardes:scaffolding_rush/villager/respawn/egg_counter/yellow 1s
