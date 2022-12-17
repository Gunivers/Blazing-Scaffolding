# When player died and can't respawn
execute if score DevelopementMode global matches 1 run say game/death/player/die

playsound minecraft:entity.player.hurt_on_fire ambient @s ~ ~ ~

tag @s remove Respawning
scoreboard players set @s respawnTimeTics 0

effect clear @s
gamemode spectator @s
