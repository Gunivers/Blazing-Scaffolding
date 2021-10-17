
#clear the blocks in the playing area

bossbar add reset_map_en {"text":"Reseting map..."}
bossbar add reset_map_fr {"text":"Chargement de la map en cours..."}
bossbar set reset_map_en players @a[scores={language=0}]
bossbar set reset_map_fr players @a[scores={language=1}]
bossbar set reset_map_en max 256
bossbar set reset_map_fr max 256
bossbar set reset_map_en color red
bossbar set reset_map_fr color red

execute unless entity @e[type=marker,name="ScR_ClearGame"] run summon minecraft:marker 1000 270 1000 {CustomName: '{"text":"ScR_ClearGame"}'}
teleport @e[type=marker,name="ScR_ClearGame",limit=1] 1000 270 1000


scoreboard players set ClearGame global 1
execute as @e[type=marker,name="ScR_ClearGame",limit=1] at @s run function scaffolding_rush:clear/game/area
