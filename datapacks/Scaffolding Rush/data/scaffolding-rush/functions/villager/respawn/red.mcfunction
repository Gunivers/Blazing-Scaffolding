execute as @a[team=red] run function loumardes:scaffolding_rush/villager/respawn/msg_dead

scoreboard players operation RedVillagerRespawn global = VillagerRespawnTics global

execute if score VillagerForgiveness options matches 1 as @a[team=red] run function loumardes:scaffolding_rush/villager/respawn/egg_counter/give
execute if score VillagerForgiveness options matches 1 as @a[team=red] run schedule function loumardes:scaffolding_rush/villager/respawn/egg_counter/red 1s
