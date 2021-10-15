gamemode spectator
team leave @s

tellraw @s[scores={language=0}] ["",{"text":"[SR]","color":"gold"},{"text":" A game is already running. You can join a game after they finish it!\n\n ","color":"gray"}]
tellraw @s[scores={language=1}] ["",{"text":"[SR]","color":"gold"},{"text":" Une partie est déjà en cours. Vous pourrez rejoindre après la fin de partie !\n\n ","color":"gray"}]

execute if score Admin options matches 1 unless entity @a[tag=admin] run scoreboard players enable @s Reset

execute as @s[tag=!InGame] at @s run function scaffolding_rush:game/tp_to_game