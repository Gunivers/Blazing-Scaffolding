# Execute as & at the player
# Called by function scaffolding_rush:player/death/trigger

# Show a dead message
title @s actionbar {"translate":"deathScreen.title"}

# Force ride and sink into lava
ride @s mount @e[tag=player.death.drown_in_lava.animation,limit=1,sort=nearest]
execute as @e[tag=player.death.drown_in_lava.animation,limit=1,sort=nearest] at @s run tp @s ~ ~-0.025 ~
execute at @s run particle lava ~ ~ ~ 0.5 0.5 0.5 0 3 normal

# Prevent new lava layer to make the player suffocate
execute at @s anchored eyes positioned ^ ^ ^ if block ~1 ~ ~ magma_block on vehicle at @s run tp @s ~ ~1 ~
execute at @s anchored eyes positioned ^ ^ ^ if block ~-1 ~ ~ magma_block on vehicle at @s run tp @s ~ ~1 ~
execute at @s anchored eyes positioned ^ ^ ^ if block ~ ~ ~1 magma_block on vehicle at @s run tp @s ~ ~1 ~
execute at @s anchored eyes positioned ^ ^ ^ if block ~ ~ ~-1 magma_block on vehicle at @s run tp @s ~ ~1 ~

# End of animation
kill @e[tag=player.death.drown_in_lava.animation,scores={player.death.animation=..1}]
execute if score @s player.death.animation matches 1 run function scaffolding_rush:player/death/respawn/start
