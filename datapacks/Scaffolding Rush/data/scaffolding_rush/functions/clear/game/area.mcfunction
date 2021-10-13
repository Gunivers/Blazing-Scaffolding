
#Recursively removes all blocks in the playing area

execute at @e[type=marker,name="ScR_ClearGame",limit=1] run function scaffolding_rush:clear/remove_blocks

execute as @e[type=marker,name="ScR_ClearGame",limit=1] at @s run teleport @s ~ ~-2 ~
execute as @e[type=marker,name="ScR_ClearGame",limit=1] store result score @s YEntity run data get entity @s Pos[1]

scoreboard players operation RESET_MAP global = @e[type=marker,name="ScR_ClearGame",limit=1] YEntity
scoreboard players operation RESET_MAP global *= -1 const
scoreboard players operation RESET_MAP global += 256 const
execute store result bossbar reset_map value run scoreboard players get RESET_MAP global

#execute unless score @s YEntity matches 2 at @s run function scaffolding_rush:clear/game/area
execute unless score @e[type=marker,name="ScR_ClearGame",limit=1] YEntity matches ..0 run schedule function scaffolding_rush:clear/game/area 1t
execute as @e[type=marker,name="ScR_ClearGame",limit=1] if score @s YEntity matches ..0 at @s run function scaffolding_rush:clear/game/finish
