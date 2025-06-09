team join red @s
function scaffolding_rush:team/killbase

clear @s #scaffolding_rush:colored_items
playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 1 1
particle minecraft:dust{color:14885410,scale:1} 4 24 6 0.5 0.1 0.5 0.3 10 normal @a
execute positioned as @e[type=villager,tag=teamJoinVillager,tag=teamRed] run teleport @e[type=villager,tag=teamJoinVillager,tag=teamRed] ~ ~ ~ facing entity @s
schedule clear scaffolding_rush:lobby/animation/restore_villager_pos/red
schedule function scaffolding_rush:lobby/animation/restore_villager_pos/red 30t

tellraw @a ["",{"text":"[BS]","color":"gold"},{"text":" "},{"selector":"@s","color":"red"},{"translate":"blazing_scaffolding.joined_team","color":"gray"},{"translate":"color.minecraft.red","color":"red"}]

