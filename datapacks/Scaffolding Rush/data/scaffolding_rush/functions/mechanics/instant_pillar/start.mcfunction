#starts a recursive function to build a scaffolding pillar

kill @e[type=falling_block,distance=..0]

execute as @s at @s run function scaffolding_rush:mechanics/instant_pillar/loop

fill ~ 0 ~ ~ 255 ~ scaffolding replace green_stained_glass
particle crit ~ ~1.5 ~ 0.2 0.2 0 0.2 5

kill @s
