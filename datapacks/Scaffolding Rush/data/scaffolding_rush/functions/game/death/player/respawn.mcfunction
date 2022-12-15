# When player died and can respawn
execute if score DevelopementMode global matches 1 run say game/death/player/respawn

scoreboard players operation @s respawnTimeTics = RespawnDelayTics global

teleport @s[team=red] @e[type=villager,team=red,limit=1]
teleport @s[team=blue] @e[type=villager,team=blue,limit=1]
teleport @s[team=yellow] @e[type=villager,team=yellow,limit=1]
teleport @s[team=green] @e[type=villager,team=green,limit=1]

function scaffolding_rush:game/death/player/respawn/loop
