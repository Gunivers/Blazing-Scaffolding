execute as @a[team=yellow] run function scaffolding_rush:game/villager/respawn/msg_dead

execute as @a[team=yellow,tag=Respawning] run function scaffolding_rush:game/death/player/die
execute if score DevelopementMode data matches 1 run say villager/respawn/yellow @a[team=yellow,tag=Respawning]

scoreboard players operation #villager.yellow respawn.timer = #villager.respawn.tick options

execute if score #villager.can_respawn options matches 1 as @a[team=yellow,gamemode=!spectator] run function scaffolding_rush:game/villager/respawn/egg_counter/give
execute if score #villager.can_respawn options matches 1 run schedule function scaffolding_rush:game/villager/respawn/egg_counter/yellow 1s
