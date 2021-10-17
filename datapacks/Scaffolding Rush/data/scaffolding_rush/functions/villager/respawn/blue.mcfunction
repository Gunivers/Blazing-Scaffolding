execute as @a[team=blue] run function scaffolding_rush:villager/respawn/msg_dead

execute as @a[team=blue,tag=Respawning] run function scaffolding_rush:died/detect

scoreboard players operation BlueVillagerRespawn global = VillagerRespawnTics global

execute if score VillagerForgiveness options matches 1 as @a[team=blue] run function scaffolding_rush:villager/respawn/egg_counter/give
execute if score VillagerForgiveness options matches 1 as @a[team=blue] run schedule function scaffolding_rush:villager/respawn/egg_counter/blue 1s
