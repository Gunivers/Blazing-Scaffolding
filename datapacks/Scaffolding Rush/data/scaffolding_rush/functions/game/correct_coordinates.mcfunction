#check X
execute if score @s XEntity > WBbyTwo global run tp @s ~-2 ~ ~
execute if score @s XEntity < -WBbyTwo global run tp @s ~2 ~ ~ 

#check Y
execute if score @s YEntity < #0 global run tp @s ~ 3 ~

#check Z
execute if score @s ZEntity > WBbyTwo global run tp @s ~ ~ ~-2
execute if score @s ZEntity < -WBbyTwo global run tp @s ~ ~ ~2