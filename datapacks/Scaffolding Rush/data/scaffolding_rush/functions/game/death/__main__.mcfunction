
# Kill players in lava
execute as @a[gamemode=!spectator,tag=!Respawning,scores={listener.death=0}] at @s if block ~ ~-0.0001 ~ magma_block run function scaffolding_rush:game/death/player/kill/lava

#Kill villagers in lava, or save them if they are invulnerable
execute if score Invulnerable#villager.enabled options matches 0 as @e[type=villager,tag=game_villager] at @s if block ~ ~-0.0001 ~ magma_block run function scaffolding_rush:game/death/villager/kill
execute unless score Invulnerable#villager.enabled options matches 0 as @e[type=villager,tag=game_villager] at @s if block ~ ~-1.8 ~ magma_block run function scaffolding_rush:game/death/villager/save
execute unless score Invulnerable#villager.enabled options matches 0 as @e[type=villager,tag=game_villager] at @s if block ~ ~-1 ~ magma_block run function scaffolding_rush:game/death/villager/save

# Kill Villager behind WB
execute as @e[type=villager,tag=game_villager] if score @s pos.x > WBbyTwo data run function scaffolding_rush:game/death/villager/kill
execute as @e[type=villager,tag=game_villager] if score @s pos.x < -WBbyTwo data run function scaffolding_rush:game/death/villager/kill
execute as @e[type=villager,tag=game_villager] if score @s pos.z > WBbyTwo data run function scaffolding_rush:game/death/villager/kill
execute as @e[type=villager,tag=game_villager] if score @s pos.z < -WBbyTwo data run function scaffolding_rush:game/death/villager/kill

# If player has been listener.death
execute as @a[scores={listener.death=1..}] at @s run function scaffolding_rush:game/death/player/kill

# Check if villager is alive
function scaffolding_rush:game/death/villager/villager_loss_detection

# Respawning loop
execute as @a[tag=Respawning,scores={respawn.timer=1..},tag=Respawning] run function scaffolding_rush:game/death/player/respawn/loop
execute as @a[tag=Respawning,scores={respawn.timer=0}] run function scaffolding_rush:game/death/player/respawn/loop_end
