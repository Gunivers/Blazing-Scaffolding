execute as @a[team=yellow] run function scaffolding_rush:villager/respawn/msg_dead

scoreboard players operation YellowVillagerRespawn global = VillagerRespawnTics global

execute if score VillagerForgiveness options matches 1 as @a[team=yellow] run function scaffolding_rush:villager/respawn/egg_counter/give
execute if score VillagerForgiveness options matches 1 as @a[team=yellow] run schedule function scaffolding_rush:villager/respawn/egg_counter/yellow 1s
