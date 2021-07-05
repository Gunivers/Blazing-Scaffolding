team join green @s
execute as @s run function loumardes:scaffolding_rush/team/base_egg/clear_egg

playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 1 1
tellraw @a ["",{"text":"[SR]","color":"gold"},{"text":" "},{"selector":"@s","color":"green"},{"text":" joined team "},{"text":"green","color":"green"}]