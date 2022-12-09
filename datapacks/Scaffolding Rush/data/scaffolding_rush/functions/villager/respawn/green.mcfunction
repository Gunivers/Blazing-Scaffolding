execute as @a[team=green] run function scaffolding_rush:villager/respawn/msg_dead

tag @a[team=green,tag=Respawning] remove Respawning

scoreboard players operation GreenVillagerRespawn global = VillagerRespawnTics global

execute if score VillagerForgiveness options matches 1 as @a[team=green] run function scaffolding_rush:villager/respawn/egg_counter/give
execute if score VillagerForgiveness options matches 1 as @a[team=green] run schedule function scaffolding_rush:villager/respawn/egg_counter/green 1s
