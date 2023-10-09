
# Kill players in lava
execute as @a[gamemode=!spectator,tag=!Respawning,scores={listener.death=0}] at @s if block ~ ~-0.0001 ~ magma_block run function scaffolding_rush:player/death/kill/lava

#Kill villagers in lava, or save them if they are invulnerable
execute unless score #villager.cannot_fall_in_lava options matches 0 as @e[type=villager,tag=respawn_villager] at @s if block ~ ~-1.8 ~ magma_block run function scaffolding_rush:game/prevent_villager_from_falling_in_lava
execute unless score #villager.cannot_fall_in_lava options matches 0 as @e[type=villager,tag=respawn_villager] at @s if block ~ ~-1 ~ magma_block run function scaffolding_rush:game/prevent_villager_from_falling_in_lava

# Kill Villager behind WB
execute as @e[type=villager,tag=respawn_villager] if score @s pos.x > WBbyTwo data run function scaffolding_rush:villager/death/kill
execute as @e[type=villager,tag=respawn_villager] if score @s pos.x < -WBbyTwo data run function scaffolding_rush:villager/death/kill
execute as @e[type=villager,tag=respawn_villager] if score @s pos.z > WBbyTwo data run function scaffolding_rush:villager/death/kill
execute as @e[type=villager,tag=respawn_villager] if score @s pos.z < -WBbyTwo data run function scaffolding_rush:villager/death/kill

# If player has been listener.death
execute as @a[scores={listener.death=1..}] at @s run function scaffolding_rush:player/death/kill

# Check if villager is alive
function scaffolding_rush:villager/death/villager_loss_detection

# Respawning loop
execute as @a[tag=Respawning,scores={respawn.timer=1..},tag=Respawning] run function scaffolding_rush:player/death/respawn/loop
execute as @a[tag=Respawning,scores={respawn.timer=0}] run function scaffolding_rush:player/death/respawn/loop_end
