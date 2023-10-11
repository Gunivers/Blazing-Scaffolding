# Execute globally
# Called by function scaffolding_rush:player/__main__

execute as @a at @s run spawnpoint @s ~ ~ ~

# Check if player can respawn -------------------------------------------------

# /!\ Must be run before death animations
tag @a remove player.can_respawn
execute if entity @e[type=villager,tag=respawn_villager,tag=red_villager] run tag @a[team=red] add player.can_respawn
execute if entity @e[type=villager,tag=respawn_villager,tag=blue_villager] run tag @a[team=blue] add player.can_respawn
execute if entity @e[type=villager,tag=respawn_villager,tag=green_villager] run tag @a[team=green] add player.can_respawn
execute if entity @e[type=villager,tag=respawn_villager,tag=yellow_villager] run tag @a[team=yellow] add player.can_respawn

# Player fell in lava ---------------------------------------------------------

execute as @a[gamemode=!spectator,scores={player.death.animation=0}] at @s if block ~0.3 ~-0.0001 ~0.3 magma_block run function scaffolding_rush:player/death/drown_in_lava/start
execute as @a[gamemode=!spectator,scores={player.death.animation=0}] at @s if block ~-0.3 ~-0.0001 ~0.3 magma_block run function scaffolding_rush:player/death/drown_in_lava/start
execute as @a[gamemode=!spectator,scores={player.death.animation=0}] at @s if block ~0.3 ~-0.0001 ~-0.3 magma_block run function scaffolding_rush:player/death/drown_in_lava/start
execute as @a[gamemode=!spectator,scores={player.death.animation=0}] at @s if block ~-0.3 ~-0.0001 ~-0.3 magma_block run function scaffolding_rush:player/death/drown_in_lava/start
execute as @a[scores={player.death.animation=1..},tag=player.death.drown_in_lava] at @s run function scaffolding_rush:player/death/drown_in_lava/animation

# Player has been killed ------------------------------------------------------

execute as @a[scores={listener.death=1..}] at @s run function scaffolding_rush:player/death/killed_by_player/start
execute as @a[scores={player.death.animation=1..},tag=player.death.killed_by_player] at @s run function scaffolding_rush:player/death/killed_by_player/animation

# Respawn --------------------------------------------------------------------

execute as @e[team=!spectator,tag=player.can_respawn,scores={respawn.timer=0},gamemode=spectator] at @s run function scaffolding_rush:player/respawn/start
execute as @a[scores={respawn.timer=1..},tag=!player.can_respawn] at @s run function scaffolding_rush:player/death/respawn/stop
execute as @a[scores={respawn.timer=1..}] at @s run function scaffolding_rush:player/death/respawn/animation

# Update timers --------------------------------------------------------------

scoreboard players remove @e[scores={player.death.animation=1..}] player.death.animation 1
scoreboard players remove @e[scores={respawn.timer=1..}] respawn.timer 1

# Update is_dead tag ---------------------------------------------------------

tag @a remove player.is_dead
tag @a[scores={player.death.animation=1..}] add player.is_dead
tag @a[scores={respawn.timer=1..}] add player.is_dead
