
execute store result score @s YEntity1000 run data get entity @s Pos[1] 1000
execute if score @s YEntity1000 <= LavaLevel*1000 global run tag @s add underLava
