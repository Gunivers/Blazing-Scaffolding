function glib.move:by_vector
execute at @s if entity @s[tag=Red] run particle dust 1.000 0.000 0.000 1 ~ ~ ~ 0 0 0 1 0 normal
execute at @s if entity @s[tag=Blue] run particle dust 0.000 0.000 1.000 1 ~ ~ ~ 0 0 0 1 0 normal
execute at @s if entity @s[tag=Green] run particle dust 0.000 1.000 0.000 1 ~ ~ ~ 0 0 0 1 0 normal
execute at @s if entity @s[tag=Yellow] run particle dust 1.000 1.000 0.000 1 ~ ~ ~ 0 0 0 1 0 normal
scoreboard players remove @s glib.var0 1
execute if score @s glib.var0 matches 1.. run function scaffolding_rush:villager/arrow_shield_laser_loop