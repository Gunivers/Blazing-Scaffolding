teleport @s ~ ~ ~ ~3 ~

scoreboard players operation tickAnim data = tick200 data
scoreboard players operation tickAnim data %= 10 const

execute if score tickAnim data matches 1 run particle happy_villager ~ ~2.5 ~ 0.5 0.5 0.5 1 1 normal @a