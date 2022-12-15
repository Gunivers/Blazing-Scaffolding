# When player died and can respawn
execute if score DevelopementMode global matches 1 run say game/death/player/respawn

scoreboard players operation @s respawnTimeTics = RespawnDelayTics global
function scaffolding_rush:game/death/player/respawn/loop
