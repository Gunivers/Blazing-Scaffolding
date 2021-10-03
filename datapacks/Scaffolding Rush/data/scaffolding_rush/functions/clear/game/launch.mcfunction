
#clear the blocks in the playing area

execute unless entity @e[type=marker,name="ScR_ClearGame"] run summon minecraft:marker 1000 270 1000 {CustomName: '{"text":"ScR_ClearGame"}'}
teleport @e[type=marker,name="ScR_ClearGame",limit=1] 1000 270 1000


scoreboard players set ClearGame global 1
execute as @e[type=marker,name="ScR_ClearGame",limit=1] at @s run function scaffolding_rush:clear/game/area
