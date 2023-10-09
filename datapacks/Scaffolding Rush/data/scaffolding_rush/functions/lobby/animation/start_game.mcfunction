
scoreboard players operation tickAnim data = tick200 data
scoreboard players operation tickAnim data %= 2 const

execute if score tickAnim data matches 1 as @e[type=marker,tag=lobbyStartParticle] at @s run teleport @s ~ ~ ~ ~30 ~
execute if score tickAnim data matches 1 as @e[type=marker,tag=lobbyStartParticle] at @s run particle minecraft:flame ^ ^ ^0.8 0 0 0 0 1 normal
