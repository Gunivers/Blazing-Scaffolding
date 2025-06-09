
execute at @s run tp @s ^ ^ ^0.1
execute at @s if entity @s[tag=Red] run particle dust{color:14885410,scale:1} ~ ~ ~ 0 0 0 1 1 normal
execute at @s if entity @s[tag=Blue] run particle dust{color:2237923,scale:1} ~ ~ ~ 0 0 0 1 1 normal
execute at @s if entity @s[tag=Green] run particle dust{color:3334946,scale:1} ~ ~ ~ 0 0 0 1 1 normal
execute at @s if entity @s[tag=Yellow] run particle dust{color:14925858,scale:1} ~ ~ ~ 0 0 0 1 1 normal
scoreboard players remove @s timer 1

execute if score @s timer matches 1.. at @s unless entity @e[type=arrow,distance=..0.15] run function scaffolding_rush:villager/arrow_shield/laser_loop