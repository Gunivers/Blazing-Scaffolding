team join random @s
execute as @s run function loumardes:scaffolding_rush/lobby/base_egg/clear_egg

playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 1 1
tellraw @a ["",{"text":"[SR]","color":"gold"},{"text":" "},{"selector":"@s","color":"dark_purple"},{"text":" want to play","color":"gray"}]
