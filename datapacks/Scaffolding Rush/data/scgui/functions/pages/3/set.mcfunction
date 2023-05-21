
# goback
item replace entity @s[scores={language=0}] enderchest.0 with tipped_arrow{CustomPotionColor: 16777215, scgui: 1, scgui.action: 0, display: {Name: '[{"text":"Back","italic":false,"color":"gold"}]'}, HideFlags: 127} 1
item replace entity @s[scores={language=1}] enderchest.0 with tipped_arrow{CustomPotionColor: 16777215, scgui: 1, scgui.action: 0, display: {Name: '[{"text":"Retour","italic":false,"color":"gold"}]'}, HideFlags: 127} 1

# UseSand
item replace entity @s[scores={language=0}] enderchest.11 with minecraft:sand{scgui: 1, scgui.action: 11, display: {Name: '[{"text":"Sand","italic":false,"color":"gold"}]', Lore: ['[{"text":"","italic":false}]']}, HideFlags: 127} 1
item replace entity @s[scores={language=1}] enderchest.11 with minecraft:sand{scgui: 1, scgui.action: 11, display: {Name: '[{"text":"Sable","italic":false,"color":"gold"}]', Lore: ['[{"text":"","italic":false}]']}, HideFlags: 127} 1

# UseSnowball
item replace entity @s[scores={language=0}] enderchest.12 with minecraft:snowball{scgui: 1, scgui.action: 12, display: {Name: '[{"text":"Bumping Arrow","italic":false,"color":"gold"}]', Lore: ['[{"text":"","italic":false}]']}, HideFlags: 127} 1
item replace entity @s[scores={language=1}] enderchest.12 with minecraft:snowball{scgui: 1, scgui.action: 12, display: {Name: '[{"text":"Flèche coup de poing","italic":false,"color":"gold"}]', Lore: ['[{"text":"","italic":false}]']}, HideFlags: 127} 1

# UseFireball
item replace entity @s[scores={language=0}] enderchest.13 with minecraft:egg{scgui: 1, scgui.action: 13, display: {Name: '[{"text":"Fireball","italic":false,"color":"gold"}]', Lore: ['[{"text":"","italic":false}]']}, HideFlags: 127} 1
item replace entity @s[scores={language=1}] enderchest.13 with minecraft:egg{scgui: 1, scgui.action: 13, display: {Name: '[{"text":"Boule de feu","italic":false,"color":"gold"}]', Lore: ['[{"text":"","italic":false}]']}, HideFlags: 127} 1

# UseEnderPearl
item replace entity @s[scores={language=0}] enderchest.14 with minecraft:ender_pearl{scgui: 1, scgui.action: 14, display: {Name: '[{"text":"Ender Pearl","italic":false,"color":"gold"}]', Lore: ['[{"text":"","italic":false}]']}, HideFlags: 127} 1
item replace entity @s[scores={language=1}] enderchest.14 with minecraft:ender_pearl{scgui: 1, scgui.action: 14, display: {Name: '[{"text":"Perle de l\'Ender","italic":false,"color":"gold"}]', Lore: ['[{"text":"","italic":false}]']}, HideFlags: 127} 1

function scgui:pages/3/test

scoreboard players set @s scgui.change 0