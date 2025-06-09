
#Recursively removes all blocks in the playing area

execute as @e[type=marker,name="ScR_ClearGame",limit=1] at @s if score @s pos.y matches 2.. run fill ~-90 ~ ~-90 ~90 ~ ~90 air replace #scaffolding_rush:clear_game
execute as @e[type=marker,name="ScR_ClearGame",limit=1] at @s if score @s pos.y matches 3.. run fill ~-90 ~-1 ~-90 ~90 ~-1 ~90 air replace #scaffolding_rush:clear_game

execute as @e[type=marker,name="ScR_ClearGame",limit=1] at @s run teleport @s ~ ~-2 ~
execute as @e[type=marker,name="ScR_ClearGame",limit=1] store result score @s pos.y run data get entity @s Pos[1]

scoreboard players operation RESET_MAP data = @e[type=marker,name="ScR_ClearGame",limit=1] pos.y
scoreboard players operation RESET_MAP data *= -1 const
scoreboard players operation RESET_MAP data += 256 const
execute store result bossbar reset_map value run scoreboard players get RESET_MAP data

#execute unless score @s pos.y matches 2 at @s run function scaffolding_rush:game/map/reset/area
execute unless score @e[type=marker,name="ScR_ClearGame",limit=1] pos.y matches ..1 run schedule function scaffolding_rush:game/map/reset/area 1t
execute as @e[type=marker,name="ScR_ClearGame",limit=1] if score @s pos.y matches ..1 at @s run schedule function scaffolding_rush:game/map/reset/finish 5t
