execute as @a[team=red] run function scaffolding_rush:villager/respawn/msg_dead

execute as @a[team=red,tag=Respawning] run function scaffolding_rush:game/death/player/die

scoreboard players operation RedVillagerRespawn global = VillagerRespawnTics global

execute if score VillagerForgiveness options matches 1 as @a[team=red,gamemode=!spectator] run function scaffolding_rush:villager/respawn/egg_counter/give
execute if score VillagerForgiveness options matches 1 run schedule function scaffolding_rush:villager/respawn/egg_counter/red 1s
