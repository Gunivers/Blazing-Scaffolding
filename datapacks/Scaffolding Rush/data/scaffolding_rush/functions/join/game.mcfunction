gamemode spectator
team leave @s

tellraw @s ["",{"text":"[SR]","color":"gold"},{"text":" A game is already running. You can join a game after they finish it !\n\n ","color":"gray"}]

execute if score Admin options matches 1 unless entity @a[tag=admin] run scoreboard players enable @s Reset

execute as @a[x=0,y=128,z=0,distance=..150] at @s run tp @s ~1000 ~ ~1000