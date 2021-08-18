team leave @s
execute as @s run function scaffolding_rush:lobby/base_egg/clear_egg
function scaffolding_rush:team/join/killbase

playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 0.5 1
tellraw @a ["",{"text":"[SR]","color":"gold"},{"text":" "},{"selector":"@s","color":"white"},{"text":" is a spectator","color":"gray"}]
