
execute if score UseSand options matches 1.. run item replace entity @s enderchest.11 with minecraft:lime_dye{scgui: 1, scgui.action: 11}
execute unless score UseSand options matches 1.. run item replace entity @s enderchest.11 with minecraft:gray_dye{scgui: 1, scgui.action: 11}

execute if score UseSand options matches 1.. run item modify entity @s enderchest.11 scgui:activate
execute unless score UseSand options matches 1.. run item modify entity @s enderchest.11 scgui:desactivate

execute if score UseSnowball options matches 1.. run item replace entity @s enderchest.12 with minecraft:lime_dye{scgui: 1, scgui.action: 12}
execute unless score UseSnowball options matches 1.. run item replace entity @s enderchest.12 with minecraft:gray_dye{scgui: 1, scgui.action: 12}

execute if score UseSnowball options matches 1.. run item modify entity @s enderchest.12 scgui:activate
execute unless score UseSnowball options matches 1.. run item modify entity @s enderchest.12 scgui:desactivate

execute if score UseFireball options matches 1.. run item replace entity @s enderchest.14 with minecraft:lime_dye{scgui: 1, scgui.action: 14}
execute unless score UseFireball options matches 1.. run item replace entity @s enderchest.14 with minecraft:gray_dye{scgui: 1, scgui.action: 14}

execute if score UseFireball options matches 1.. run item modify entity @s enderchest.14 scgui:activate
execute unless score UseFireball options matches 1.. run item modify entity @s enderchest.14 scgui:desactivate

execute if score UseEnderPearl options matches 1.. run item replace entity @s enderchest.15 with minecraft:lime_dye{scgui: 1, scgui.action: 15}
execute unless score UseEnderPearl options matches 1.. run item replace entity @s enderchest.15 with minecraft:gray_dye{scgui: 1, scgui.action: 15}

execute if score UseEnderPearl options matches 1.. run item modify entity @s enderchest.15 scgui:activate
execute unless score UseEnderPearl options matches 1.. run item modify entity @s enderchest.15 scgui:desactivate
