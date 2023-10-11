team join spectator @s
execute as @s run function scaffolding_rush:lobby/base_egg/clear_egg
function scaffolding_rush:team/join/killbase
tag @a remove player.item.can_have_items
tag @a remove player.item.have_egg

playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 0.5 1
tellraw @a[scores={option_language=0}] ["",{"text":"[BS]","color":"gold"},{"text":" "},{"selector":"@s","color":"white"},{"text":" is a spectator","color":"gray"}]
tellraw @a[scores={option_language=1}] ["",{"text":"[BS]","color":"gold"},{"text":" "},{"selector":"@s","color":"white"},{"text":" est un spectateur","color":"gray"}]
