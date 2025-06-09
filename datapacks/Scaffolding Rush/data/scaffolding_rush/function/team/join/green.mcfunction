team join green @s
function scaffolding_rush:team/killbase

clear @s #scaffolding_rush:colored_items
playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 1 1
particle minecraft:dust{color:3334946,scale:1} 6 24 2 0.5 0.1 0.5 0.3 10 normal @a
execute positioned as @e[type=villager,tag=teamJoinVillager,tag=teamGreen] run teleport @e[type=villager,tag=teamJoinVillager,tag=teamGreen] ~ ~ ~ facing entity @s
schedule clear scaffolding_rush:lobby/animation/restore_villager_pos/green
schedule function scaffolding_rush:lobby/animation/restore_villager_pos/green 30t

tellraw @a ["",{"text":"[BS]","color":"gold"},{"text":" "},{"selector":"@s","color":"green"},{"translate":"blazing_scaffolding.joined_team","color":"gray"},{"translate":"color.minecraft.green","color":"green"}]
