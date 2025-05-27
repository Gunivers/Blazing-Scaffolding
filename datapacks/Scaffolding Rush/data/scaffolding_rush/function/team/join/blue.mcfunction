team join blue @s
function scaffolding_rush:team/join/killbase

clear @s #scaffolding_rush:colored_items
playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 1 1
particle minecraft:dust 0.09 0.02 0.98 1 ^ ^1 ^0.3 0.3 0.8 0.3 1 10 normal
execute positioned as @e[type=villager,tag=teamJoinVillager,tag=teamBlue] run teleport @e[type=villager,tag=teamJoinVillager,tag=teamBlue] ~ ~ ~ facing entity @s
schedule clear scaffolding_rush:lobby/animation/restore_villager_pos/blue
schedule function scaffolding_rush:lobby/animation/restore_villager_pos/blue 30t

tellraw @a ["",{"text":"[BS]","color":"gold"},{"text":" "},{"selector":"@s","color":"blue"},{"translate":"blazing_scaffolding.joined_team","color":"gray"},{"translate":"color.minecraft.blue","color":"blue"}]
