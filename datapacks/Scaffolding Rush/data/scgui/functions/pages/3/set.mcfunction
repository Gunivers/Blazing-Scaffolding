
# goback
item replace entity @s[scores={option.language=0}] enderchest.22 with tipped_arrow{CustomPotionColor: 16777215, scgui: 1, scgui.action: 22, display: {Name: '[{"text":"Back","italic":false,"color":"gold"}]'}, HideFlags: 127} 1
item replace entity @s[scores={option.language=1}] enderchest.22 with tipped_arrow{CustomPotionColor: 16777215, scgui: 1, scgui.action: 22, display: {Name: '[{"text":"Retour","italic":false,"color":"gold"}]'}, HideFlags: 127} 1

# #player.item.sand.enabled
item replace entity @s[scores={option.language=0}] enderchest.2 with minecraft:sand{scgui: 1, scgui.action: 2, display: {Name: '[{"text":"Sand","italic":false,"color":"gold"}]', Lore: ['[{"text":"","italic":false}]']}, HideFlags: 127} 1
item replace entity @s[scores={option.language=1}] enderchest.2 with minecraft:sand{scgui: 1, scgui.action: 2, display: {Name: '[{"text":"Sable","italic":false,"color":"gold"}]', Lore: ['[{"text":"","italic":false}]']}, HideFlags: 127} 1

# #player.item.bumping_arrow.enabled
item replace entity @s[scores={option.language=0}] enderchest.3 with minecraft:snowball{scgui: 1, scgui.action: 3, display: {Name: '[{"text":"Bumping Arrow","italic":false,"color":"gold"}]', Lore: ['[{"text":"","italic":false}]']}, HideFlags: 127} 1
item replace entity @s[scores={option.language=1}] enderchest.3 with minecraft:snowball{scgui: 1, scgui.action: 3, display: {Name: '[{"text":"Flèche coup de poing","italic":false,"color":"gold"}]', Lore: ['[{"text":"","italic":false}]']}, HideFlags: 127} 1

# #player.item.fireball.enabled
item replace entity @s[scores={option.language=0}] enderchest.5 with minecraft:egg{scgui: 1, scgui.action: 5, display: {Name: '[{"text":"Fireball","italic":false,"color":"gold"}]', Lore: ['[{"text":"","italic":false}]']}, HideFlags: 127} 1
item replace entity @s[scores={option.language=1}] enderchest.5 with minecraft:egg{scgui: 1, scgui.action: 5, display: {Name: '[{"text":"Boule de feu","italic":false,"color":"gold"}]', Lore: ['[{"text":"","italic":false}]']}, HideFlags: 127} 1

# #player.item.ender_pearl.enabled
item replace entity @s[scores={option.language=0}] enderchest.6 with minecraft:ender_pearl{scgui: 1, scgui.action: 6, display: {Name: '[{"text":"Ender Pearl","italic":false,"color":"gold"}]', Lore: ['[{"text":"","italic":false}]']}, HideFlags: 127} 1
item replace entity @s[scores={option.language=1}] enderchest.6 with minecraft:ender_pearl{scgui: 1, scgui.action: 6, display: {Name: '[{"text":"Perle de l\'Ender","italic":false,"color":"gold"}]', Lore: ['[{"text":"","italic":false}]']}, HideFlags: 127} 1

function scgui:pages/3/test

scoreboard players set @s scgui.change 0