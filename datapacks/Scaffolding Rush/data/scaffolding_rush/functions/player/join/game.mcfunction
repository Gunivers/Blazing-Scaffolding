gamemode spectator

execute if score TeamNumber options matches 2 run team leave @s[team=!red]
execute if score TeamNumber options matches 2 run team leave @s[team=!blue]
execute if score TeamNumber options matches 3 run team leave @s[team=green]

tellraw @s[scores={option.language=0}] ["",{"text":"[BS]","color":"gold"},{"text":" A game is already running. You can join a game after they finish it!\n\n ","color":"gray"}]
tellraw @s[scores={option.language=1}] ["",{"text":"[BS]","color":"gold"},{"text":" Une partie est déjà en cours. Vous pourrez rejoindre après la fin de partie !\n\n ","color":"gray"}]

bossbar set minecraft:filling_lava players @s

execute if score #admin.exist options matches 1 unless entity @a[tag=admin] run scoreboard players enable @s trigger.reset

execute as @s[tag=!InGame] if score @s game.id matches 1.. at @s run function scaffolding_rush:game/tp_to_game

execute at @e[type=marker,name="lava.level",limit=1] run teleport @s ~ ~50 ~ 0 90
