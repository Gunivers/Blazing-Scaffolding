#check X
execute as @a[gamemode=!spectator] at @s if score @s XEntity > WBbyTwo global run tp @s ~-2 ~ ~
execute as @a[gamemode=!spectator] at @s if score @s XEntity < -WBbyTwo global run tp @s ~2 ~ ~ 

#check Y
execute as @a at @s if score @s YEntity < #0 global run tp @s ~ 3 ~

#check Z
execute as @a[gamemode=!spectator] at @s if score @s ZEntity > WBbyTwo global run tp @s ~ ~ ~-2
execute as @a[gamemode=!spectator] at @s if score @s ZEntity < -WBbyTwo global run tp @s ~ ~ ~2

#suffocation
execute as @a[gamemode=!spectator] at @s if score GameRunning global matches 0 if block ~ ~ ~ #scaffolding_rush:lobby_suffocation run function scaffolding_rush:lobby/suffocation