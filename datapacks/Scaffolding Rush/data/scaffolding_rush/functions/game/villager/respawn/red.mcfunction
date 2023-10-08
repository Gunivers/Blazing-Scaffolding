execute as @a[team=red] run function scaffolding_rush:game/villager/respawn/msg_dead

execute as @a[team=red,tag=Respawning] run function scaffolding_rush:game/death/player/die

scoreboard players operation #villager.red respawn.timer = #villager.respawn.tick options

execute if score #villager.can_respawn options matches 1 as @a[team=red,gamemode=!spectator] run function scaffolding_rush:game/villager/respawn/egg_counter/give
execute if score #villager.can_respawn options matches 1 run schedule function scaffolding_rush:game/villager/respawn/egg_counter/red 1s
