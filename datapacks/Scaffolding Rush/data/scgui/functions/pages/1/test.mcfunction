
execute if score VillagerForgiveness options matches 1.. run item replace entity @s enderchest.12 with minecraft:lime_dye{scgui: 1, scgui.action: 12}
execute unless score VillagerForgiveness options matches 1.. run item replace entity @s enderchest.12 with minecraft:gray_dye{scgui: 1, scgui.action: 12}

execute if score VillagerForgiveness options matches 1.. run item modify entity @s enderchest.12 scgui:activate
execute unless score VillagerForgiveness options matches 1.. run item modify entity @s enderchest.12 scgui:desactivate


# execute if score InvulnerableVillager options matches 1.. run item modify entity @s enderchest.13 scgui:activate
# execute unless score InvulnerableVillager options matches 1.. run item modify entity @s enderchest.13 scgui:desactivate


execute if score MovableVillager options matches 1.. run item replace entity @s enderchest.14 with minecraft:lime_dye{scgui: 1, scgui.action: 14}
execute unless score MovableVillager options matches 1.. run item replace entity @s enderchest.14 with minecraft:gray_dye{scgui: 1, scgui.action: 14}

execute if score MovableVillager options matches 1.. run item modify entity @s enderchest.14 scgui:activate
execute unless score MovableVillager options matches 1.. run item modify entity @s enderchest.14 scgui:desactivate
