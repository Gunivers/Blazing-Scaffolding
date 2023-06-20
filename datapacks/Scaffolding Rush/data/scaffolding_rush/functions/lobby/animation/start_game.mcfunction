
scoreboard players operation tickAnim global = tick200 global
scoreboard players operation tickAnim global %= #2 const

execute if score tickAnim global matches 1 as @e[type=marker,tag=lobbyStartParticle] at @s run teleport @s ~ ~ ~ ~30 ~
execute if score tickAnim global matches 1 as @e[type=marker,tag=lobbyStartParticle] at @s run particle minecraft:flame ^ ^ ^0.8 0 0 0 0 1 normal
