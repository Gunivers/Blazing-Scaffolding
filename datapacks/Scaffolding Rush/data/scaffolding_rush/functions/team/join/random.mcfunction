team join random @s
execute as @s run function scaffolding_rush:lobby/base_egg/clear_egg
function scaffolding_rush:lobby/refresh_items

playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 1 1
tellraw @a[scores={option.language=0}] ["",{"text":"[BS]","color":"gold"},{"text":" "},{"selector":"@s","color":"dark_purple"},{"text":" is ready to play","color":"gray"}]
tellraw @a[scores={option.language=1}] ["",{"text":"[BS]","color":"gold"},{"text":" "},{"selector":"@s","color":"dark_purple"},{"text":" est prêt·e à jouer","color":"gray"}]
