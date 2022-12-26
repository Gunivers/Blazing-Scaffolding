
team leave @s
execute as @s run function scaffolding_rush:lobby/base_egg/clear_egg
function scaffolding_rush:team/join/killbase
clear @s

playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 0.5 1
tellraw @a[scores={language=0}] ["",{"text":"[SR]","color":"gold"},{"text":" "},{"selector":"@s","color":"white"},{"text":" is a spectator","color":"gray"}]
tellraw @a[scores={language=1}] ["",{"text":"[SR]","color":"gold"},{"text":" "},{"selector":"@s","color":"white"},{"text":" est un spectateur","color":"gray"}]
