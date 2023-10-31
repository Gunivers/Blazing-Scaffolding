team join yellow @s
function scaffolding_rush:team/join/killbase

clear @s #scaffolding_rush:colored_items
playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 1 1
particle minecraft:dust 0.941 1 0.145 1 ^ ^1 ^0.3 0.3 0.8 0.3 1 10 normal
execute positioned as @e[type=villager,tag=teamJoinVillager,tag=teamYellow] run teleport @e[type=villager,tag=teamJoinVillager,tag=teamYellow] ~ ~ ~ facing entity @s
schedule clear scaffolding_rush:lobby/animation/restore_villager_pos/yellow
schedule function scaffolding_rush:lobby/animation/restore_villager_pos/yellow 30t

tellraw @a ["",{"text":"[BS]","color":"gold"},{"text":" "},{"selector":"@s","color":"yellow"},{"translate":"blazing_scaffolding.joined_team","color":"gray"},{"translate":"color.minecraft.yellow","color":"yellow"}]
