team join blue @s
execute if score TeamEgg options matches 1 run function scaffolding_rush:lobby/base_egg/reset
function scaffolding_rush:team/join/killbase

playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 1 1
particle minecraft:dust 0.09 0.02 0.98 1 ^ ^1 ^0.3 0.3 0.8 0.3 1 10 normal
execute positioned as @e[type=villager,tag=teamJoinVillager,tag=teamBlue] run teleport @e[type=villager,tag=teamJoinVillager,tag=teamBlue] ~ ~ ~ facing entity @s
schedule clear scaffolding_rush:lobby/animation/restore_villager_pos/blue
schedule function scaffolding_rush:lobby/animation/restore_villager_pos/blue 30t

tellraw @a[scores={option_language=0}] ["",{"text":"[BS]","color":"gold"},{"text":" "},{"selector":"@s","color":"blue"},{"text":" joined team ","color":"gray"},{"text":"Blue","color":"blue"}]
tellraw @a[scores={option_language=1}] ["",{"text":"[BS]","color":"gold"},{"text":" "},{"selector":"@s","color":"blue"},{"text":" a rejoint l'équipe ","color":"gray"},{"text":"Bleue","color":"blue"}]
