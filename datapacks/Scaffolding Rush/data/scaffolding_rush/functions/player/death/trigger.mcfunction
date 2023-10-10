

# Kill players in lava
execute as @a[gamemode=!spectator,tag=!Respawning,scores={listener.death=0,player.death.animation=0}] at @s if block ~ ~-0.0001 ~ magma_block run function scaffolding_rush:player/death/drown_in_lava/start
execute if entity @a[scores={player.death.animation=1..}] run function scaffolding_rush:player/death/drown_in_lava/animation

# If player has been killed
execute as @a[scores={listener.death=1..}] at @s run function scaffolding_rush:player/death/kill

# Respawning loop
execute as @a[tag=Respawning,scores={respawn.timer=1..},tag=Respawning] run function scaffolding_rush:player/death/respawn/loop
execute as @a[tag=Respawning,scores={respawn.timer=0}] run function scaffolding_rush:player/death/respawn/loop_end

# Animated title
execute if entity @a[scores={player.animated_title.timer=1..}] run function scaffolding_rush:player/animated_title/animation