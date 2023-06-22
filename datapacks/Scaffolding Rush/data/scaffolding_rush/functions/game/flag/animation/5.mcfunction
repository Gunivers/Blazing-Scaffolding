teleport @s ~ ~ ~ ~5 ~

scoreboard players operation tickAnim global = tick200 global
scoreboard players operation tickAnim global %= #10 global

execute if score tickAnim global matches 1 run particle glow ~ ~2.5 ~ 0.5 0.5 0.5 1 1 normal @a