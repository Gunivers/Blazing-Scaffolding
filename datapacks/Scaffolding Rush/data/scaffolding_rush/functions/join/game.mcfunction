gamemode spectator
team leave @s
clear @s
teleport @s @r[gamemode=!spectator]

tellraw @s ["",{"text":"[SR]","color":"gold"},{"text":" A game is already running. You can join a game after they finish it !\n\n ","color":"gray"}]

execute if score Admin options matches 1 unless entity @a[tag=admin] run scoreboard players enable @s Reset
