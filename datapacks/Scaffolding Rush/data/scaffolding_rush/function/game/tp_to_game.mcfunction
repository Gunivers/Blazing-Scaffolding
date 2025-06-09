execute as @a[team=,tag=!InGame] run function scaffolding_rush:player/death/respawn/stop
execute as @a[team=,tag=!InGame] at @s run teleport @s ~1000 ~ ~1000
tag @a[team=,tag=!InGame] add InGame
