execute as @a[team=yellow] run function scaffolding_rush:villager/respawn/msg_dead

execute as @a[team=yellow,tag=Respawning] run function scaffolding_rush:game/death/player/die
execute if score DevelopementMode global matches 1 run say villager/respawn/yellow @a[team=yellow,tag=Respawning]

scoreboard players operation YellowVillagerRespawn global = VillagerRespawnTics global

execute if score VillagerForgiveness options matches 1 as @a[team=yellow,gamemode=!spectator] run function scaffolding_rush:villager/respawn/egg_counter/give
schedule function scaffolding_rush:villager/respawn/egg_counter/yellow 1s
