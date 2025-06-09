
# goback
item replace entity @s enderchest.22 with tipped_arrow{CustomPotionColor: 16777215, scgui: 1, scgui.action: 22, display: {Name: '[{"translate":"blazing_scaffolding.back","italic":false,"color":"gold"}]'}, HideFlags: 127} 1

# #villager.can_respawn
item replace entity @s enderchest.3 with minecraft:totem_of_undying{scgui: 1, scgui.action: 3, display: {Name: '[{"translate":"blazing_scaffolding.revival","italic":false,"color":"gold"}]', Lore: ['[{"translate":"blazing_scaffolding.revival.lore_0","italic":false}]', '[{"translate":"blazing_scaffolding.revival.lore_1","italic":false}]']}, HideFlags: 127} 1


# MovableVillager
item replace entity @s enderchest.5 with minecraft:lead{scgui: 1, scgui.action: 5, display: {Name: '[{"translate":"blazing_scaffolding.moveable","italic":false,"color":"gold"}]', Lore: ['[{"translate":"blazing_scaffolding.moveable.lore","italic":false}]']}, HideFlags: 127} 1

function scgui:pages/1/test

scoreboard players set @s scgui.change 0