scoreboard players oepration #tmp data = WBbyTwo data
scoreboard players add #tmp data 1

#check X
execute if score @s pos.x > #tmp data run tp @s ~-2 ~ ~
execute if score @s pos.x < -#tmp data run tp @s ~2 ~ ~ 

#check Y
execute if score @s pos.y < 0 const run tp @s ~ 3 ~

#check Z
execute if score @s pos.z > #tmp data run tp @s ~ ~ ~-2
execute if score @s pos.z < -#tmp data run tp @s ~ ~ ~2
