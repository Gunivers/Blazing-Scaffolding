team join green @s
execute if score TeamEgg options matches 1 run function scaffolding_rush:lobby/base_egg/reset
function scaffolding_rush:team/join/killbase
function scaffolding_rush:lobby/refresh_items

playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 1 1
particle minecraft:dust 0.098 0.98 0.02 1 ^ ^1 ^0.3 0.3 0.8 0.3 1 10 normal
execute positioned as @e[type=villager,tag=teamJoinVillager,tag=teamGreen] run teleport @e[type=villager,tag=teamJoinVillager,tag=teamGreen] ~ ~ ~ facing entity @s
schedule clear scaffolding_rush:lobby/text/team/restore_villager_pos/green
schedule function scaffolding_rush:lobby/text/team/restore_villager_pos/green 30t
tag @s add titleJoinTeam

tellraw @a[scores={option.language=0}] ["",{"text":"[BS]","color":"gold"},{"text":" "},{"selector":"@s","color":"green"},{"text":" joined team ","color":"gray"},{"text":"Green","color":"green"}]
tellraw @a[scores={option.language=1}] ["",{"text":"[BS]","color":"gold"},{"text":" "},{"selector":"@s","color":"green"},{"text":" a rejoint l'équipe ","color":"gray"},{"text":"Verte","color":"green"}]
