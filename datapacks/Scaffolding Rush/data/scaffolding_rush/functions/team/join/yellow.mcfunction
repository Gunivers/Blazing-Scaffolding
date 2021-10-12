team join yellow @s
execute if score TeamEgg options matches 1 run function scaffolding_rush:lobby/base_egg/reset
function scaffolding_rush:team/join/killbase

playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 1 1
tellraw @a ["",{"text":"[SR]","color":"gold"},{"text":" "},{"selector":"@s","color":"yellow"},{"text":" joined team ","color":"gray"},{"text":"yellow","color":"yellow"}]
