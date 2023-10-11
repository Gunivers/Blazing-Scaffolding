# Execute as & at the player
# Called by function scaffolding_rush:player/death/trigger

# Force spectate camera
spectate @e[tag=player.death.killed_by_player.animation,limit=1,sort=nearest] @s[scores={player.death.animation=1..39}]
execute as @e[tag=player.death.killed_by_player.animation,limit=1,sort=nearest] at @s run tp @s ^ ^ ^-0.05 ~ ~1 

# End of animation
kill @e[tag=player.death.killed_by_player.animation,scores={player.death.animation=..1}]
execute if score @s player.death.animation matches 1 run function scaffolding_rush:player/death/respawn/start
