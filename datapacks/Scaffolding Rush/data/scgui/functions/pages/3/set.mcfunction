
# goback
item replace entity @s enderchest.22 with tipped_arrow{CustomPotionColor: 16777215, scgui: 1, scgui.action: 22, display: {Name: '[{"translate":"blazing_scaffolding.back","italic":false,"color":"gold"}]'}, HideFlags: 127} 1

# #player.item.sand.enabled
item replace entity @s enderchest.2 with minecraft:sand{scgui: 1, scgui.action: 2, display: {Name: '[{"translate":"block.minecraft.sand","italic":false,"color":"gold"}]', Lore: ['[{"text":"","italic":false}]']}, HideFlags: 127} 1

# #player.item.bumping_arrow.enabled
item replace entity @s enderchest.3 with minecraft:snowball{scgui: 1, scgui.action: 3, display: {Name: '[{"translate":"blazing_scaffolding.bumping_arrow","italic":false,"color":"gold"}]', Lore: ['[{"text":"","italic":false}]']}, HideFlags: 127} 1

# #player.item.fireball.enabled
item replace entity @s enderchest.5 with minecraft:egg{scgui: 1, scgui.action: 5, display: {Name: '[{"translate":"entity.minecraft.fireball","italic":false,"color":"gold"}]', Lore: ['[{"text":"","italic":false}]']}, HideFlags: 127} 1

# #player.item.ender_pearl.enabled
item replace entity @s enderchest.6 with minecraft:ender_pearl{scgui: 1, scgui.action: 6, display: {Name: '[{"translate":"item.minecraft.ender_pearl","italic":false,"color":"gold"}]', Lore: ['[{"text":"","italic":false}]']}, HideFlags: 127} 1

function scgui:pages/3/test

scoreboard players set @s scgui.change 0