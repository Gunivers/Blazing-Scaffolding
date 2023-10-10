# Executed globally
# Called by scaffolding_rush:__tick__

# Join Management -------------------------------------------------------------

# Players just joined if he doesn't have uuid (first join)
execute as @a unless score @s uuid matches -2147483648..2147483647 run function scaffolding_rush:player/join/__main__
# Or if he have a leav score
execute as @a[scores={listener.leave=1..}] run function scaffolding_rush:player/join/__main__

# Item Management -------------------------------------------------------------

function scaffolding_rush:player/items

# Death Management ------------------------------------------------------------

# Kill players in lava
execute as @a[gamemode=!spectator,tag=!Respawning,scores={listener.death=0}] at @s if block ~ ~-0.0001 ~ magma_block run function scaffolding_rush:player/death/kill/lava

# If player has been killed
execute as @a[scores={listener.death=1..}] at @s run function scaffolding_rush:player/death/kill

# Respawning loop
execute as @a[tag=Respawning,scores={respawn.timer=1..},tag=Respawning] run function scaffolding_rush:player/death/respawn/loop
execute as @a[tag=Respawning,scores={respawn.timer=0}] run function scaffolding_rush:player/death/respawn/loop_end

# Animated title
execute if entity @a[scores={player.animated_title.timer=1..}] run function scaffolding_rush:player/animated_title/animation