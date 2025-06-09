team join yellow @s
function scaffolding_rush:team/killbase

clear @s #scaffolding_rush:colored_items
playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 1 1
particle minecraft:dust{color:14925858,scale:1} 2 24 6 0.5 0.1 0.5 0.3 10 normal @a
execute positioned as @e[type=villager,tag=teamJoinVillager,tag=teamYellow] run teleport @e[type=villager,tag=teamJoinVillager,tag=teamYellow] ~ ~ ~ facing entity @s
schedule clear scaffolding_rush:lobby/animation/restore_villager_pos/yellow
schedule function scaffolding_rush:lobby/animation/restore_villager_pos/yellow 30t

tellraw @a ["",{"text":"[BS]","color":"gold"},{"text":" "},{"selector":"@s","color":"yellow"},{"translate":"blazing_scaffolding.joined_team","color":"gray"},{"translate":"color.minecraft.yellow","color":"yellow"}]
