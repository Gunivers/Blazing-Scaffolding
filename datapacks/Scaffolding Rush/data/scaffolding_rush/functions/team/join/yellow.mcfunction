team join yellow @s
execute if score TeamEgg options matches 1 run function scaffolding_rush:lobby/base_egg/reset
function scaffolding_rush:team/join/killbase
function scaffolding_rush:lobby/refresh_items

playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 1 1
particle minecraft:dust 0.941 1 0.145 1 ^ ^1 ^0.3 0.3 0.8 0.3 1 10 normal
execute positioned as @e[type=villager,tag=teamJoinVillager,tag=teamYellow] run teleport @e[type=villager,tag=teamJoinVillager,tag=teamYellow] ~ ~ ~ facing entity @s
schedule clear scaffolding_rush:lobby/text/team/restore_villager_pos/yellow
schedule function scaffolding_rush:lobby/text/team/restore_villager_pos/yellow 30t

tellraw @a[scores={option.language=0}] ["",{"text":"[BS]","color":"gold"},{"text":" "},{"selector":"@s","color":"yellow"},{"text":" joined team ","color":"gray"},{"text":"Yellow","color":"yellow"}]
tellraw @a[scores={option.language=1}] ["",{"text":"[BS]","color":"gold"},{"text":" "},{"selector":"@s","color":"yellow"},{"text":" a rejoint l'équipe ","color":"gray"},{"text":"Jaune","color":"yellow"}]
