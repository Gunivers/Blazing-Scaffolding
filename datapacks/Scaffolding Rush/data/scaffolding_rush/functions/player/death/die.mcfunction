# When player died and can't respawn
execute if score DevelopementMode data matches 1 run say game/death/player/die

playsound minecraft:entity.player.hurt_on_fire ambient @s ~ ~ ~

tag @s remove Respawning
scoreboard players set @s respawn.timer 0

effect clear @s
gamemode spectator @s
