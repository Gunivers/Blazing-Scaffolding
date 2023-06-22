
execute if score PerformanceMode options matches 1.. run item replace entity @s enderchest.24 with minecraft:lime_dye{scgui: 1, scgui.action: 24}
execute unless score PerformanceMode options matches 1.. run item replace entity @s enderchest.24 with minecraft:gray_dye{scgui: 1, scgui.action: 24}

execute if score PerformanceMode options matches 1.. run item modify entity @s enderchest.24 scgui:activate
execute unless score PerformanceMode options matches 1.. run item modify entity @s enderchest.24 scgui:desactivate

execute if score Admin options matches 1.. run item replace entity @s enderchest.25 with minecraft:lime_dye{scgui: 1, scgui.action: 25}
execute unless score Admin options matches 1.. run item replace entity @s enderchest.25 with minecraft:gray_dye{scgui: 1, scgui.action: 25}

execute if score Admin options matches 1.. run item modify entity @s enderchest.25 scgui:activate
execute unless score Admin options matches 1.. run item modify entity @s enderchest.25 scgui:desactivate
