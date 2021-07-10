team join red @s
execute as @s run function loumardes:scaffolding_rush/team/base_egg/clear_egg
function loumardes:scaffolding_rush/team/join/killbase

playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 1 1
tellraw @a ["",{"text":"[SR]","color":"gold"},{"text":" "},{"selector":"@s","color":"red"},{"text":" joined team ","color":"gray"},{"text":"red","color":"red"}]
