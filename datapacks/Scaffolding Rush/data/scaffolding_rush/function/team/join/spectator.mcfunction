team join spectator @s
function scaffolding_rush:team/join/killbase
tag @a remove player.item.can_have_items
tag @a remove player.item.have_egg

clear @s #scaffolding_rush:colored_items
playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 0.5 1
tellraw @a ["",{"text":"[BS]","color":"gold"},{"text":" "},{"selector":"@s","color":"white"},{"translate":"blazing_scaffolding.is_a_spectator","color":"gray"}]

