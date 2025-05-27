gamemode spectator

execute if score TeamNumber options matches 2 run team leave @s[team=!red]
execute if score TeamNumber options matches 2 run team leave @s[team=!blue]
execute if score TeamNumber options matches 3 run team leave @s[team=green]

tellraw @s ["",{"text":"[BS]","color":"gold"},{"translate":"blazing_scaffolding.a_game_is_already_running","color":"gray"}]

bossbar set minecraft:filling_lava players @s

execute as @s[tag=!InGame] if score @s game.id matches 1.. at @s run function scaffolding_rush:game/tp_to_game

execute at @e[type=marker,name="lava.level",limit=1] run teleport @s ~ ~50 ~ 0 90
