
scoreboard players set @s player.item.sand.count 42

tellraw @s  ["",{"text":"======================","color":"gray"},{"text":"\n\n"},{"translate":"blazing_scaffolding.tutorial","bold":true,"color":"gold"},{"text":" [5/5]","bold":true,"color":"gold"},{"text":"\n\n"},{"translate":"blazing_scaffolding.step_5_0","color":"white"},{"text":"[","color":"gold"},{"translate":"block.minecraft.sand","color":"gold"},{"text":"] ","color":"gold"},{"translate":"blazing_scaffolding.step_5_1","color":"white"},{"translate":"blazing_scaffolding.step_5_2","color":"gold"},{"translate":"blazing_scaffolding.step_5_3","color":"white"},{"text":"\n\n"},{"text":"======================","color":"gray"}]
playsound block.note_block.bell ambient @s ~ ~ ~ 1000 1.41

tag @s add TutorialMessage5