
execute as @e[tag=Volcano] at @s run function glib.move:by_vector
scoreboard players remove @e[tag=Volcano] glib.vectorY 25