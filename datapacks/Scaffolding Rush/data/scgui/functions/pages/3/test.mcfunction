
execute if score #player.item.sand.enabled options matches 1.. run item replace entity @s enderchest.11 with minecraft:lime_dye{scgui: 1, scgui.action: 11}
execute unless score #player.item.sand.enabled options matches 1.. run item replace entity @s enderchest.11 with minecraft:gray_dye{scgui: 1, scgui.action: 11}

execute if score #player.item.sand.enabled options matches 1.. run item modify entity @s enderchest.11 scgui:activate
execute unless score #player.item.sand.enabled options matches 1.. run item modify entity @s enderchest.11 scgui:desactivate

execute if score #player.item.bumping_arrow.enabled options matches 1.. run item replace entity @s enderchest.12 with minecraft:lime_dye{scgui: 1, scgui.action: 12}
execute unless score #player.item.bumping_arrow.enabled options matches 1.. run item replace entity @s enderchest.12 with minecraft:gray_dye{scgui: 1, scgui.action: 12}

execute if score #player.item.bumping_arrow.enabled options matches 1.. run item modify entity @s enderchest.12 scgui:activate
execute unless score #player.item.bumping_arrow.enabled options matches 1.. run item modify entity @s enderchest.12 scgui:desactivate

execute if score #player.item.fireball.enabled options matches 1.. run item replace entity @s enderchest.14 with minecraft:lime_dye{scgui: 1, scgui.action: 14}
execute unless score #player.item.fireball.enabled options matches 1.. run item replace entity @s enderchest.14 with minecraft:gray_dye{scgui: 1, scgui.action: 14}

execute if score #player.item.fireball.enabled options matches 1.. run item modify entity @s enderchest.14 scgui:activate
execute unless score #player.item.fireball.enabled options matches 1.. run item modify entity @s enderchest.14 scgui:desactivate

execute if score #player.item.ender_pearl.enabled options matches 1.. run item replace entity @s enderchest.15 with minecraft:lime_dye{scgui: 1, scgui.action: 15}
execute unless score #player.item.ender_pearl.enabled options matches 1.. run item replace entity @s enderchest.15 with minecraft:gray_dye{scgui: 1, scgui.action: 15}

execute if score #player.item.ender_pearl.enabled options matches 1.. run item modify entity @s enderchest.15 scgui:activate
execute unless score #player.item.ender_pearl.enabled options matches 1.. run item modify entity @s enderchest.15 scgui:desactivate
