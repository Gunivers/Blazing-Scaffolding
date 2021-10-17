team join yellow @s
execute if score TeamEgg options matches 1 run function scaffolding_rush:lobby/base_egg/reset
function scaffolding_rush:team/join/killbase

playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 1 1
tellraw @a[scores={language=0}] ["",{"text":"[SR]","color":"gold"},{"text":" "},{"selector":"@s","color":"yellow"},{"text":" joined team ","color":"gray"},{"text":"Yellow","color":"yellow"}]
tellraw @a[scores={language=1}] ["",{"text":"[SR]","color":"gold"},{"text":" "},{"selector":"@s","color":"yellow"},{"text":" a rejoint l'équipe ","color":"gray"},{"text":"Verte","color":"yellow"}]
