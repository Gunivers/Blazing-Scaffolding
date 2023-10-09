#check X
execute if score @s pos.x > WBbyTwo data run tp @s ~-2 ~ ~
execute if score @s pos.x < -WBbyTwo data run tp @s ~2 ~ ~ 

#check Y
execute if score @s pos.y < 0 const run tp @s ~ 3 ~

#check Z
execute if score @s pos.z > WBbyTwo data run tp @s ~ ~ ~-2
execute if score @s pos.z < -WBbyTwo data run tp @s ~ ~ ~2

#suffocation
execute if score #game.running data matches 0 if block ~ ~ ~ #scaffolding_rush:lobby_suffocation run function scaffolding_rush:lobby/suffocation