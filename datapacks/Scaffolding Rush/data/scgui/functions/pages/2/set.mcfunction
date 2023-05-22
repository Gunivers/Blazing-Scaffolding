
# goback
item replace entity @s[scores={language=0}] enderchest.0 with tipped_arrow{CustomPotionColor: 16777215, scgui: 1, scgui.action: 0, display: {Name: '[{"text":"Back","italic":false,"color":"gold"}]'}, HideFlags: 127} 1
item replace entity @s[scores={language=1}] enderchest.0 with tipped_arrow{CustomPotionColor: 16777215, scgui: 1, scgui.action: 0, display: {Name: '[{"text":"Retour","italic":false,"color":"gold"}]'}, HideFlags: 127} 1

# Regen
item replace entity @s[scores={language=0}] enderchest.10 with minecraft:golden_apple{scgui: 1, scgui.action: 10, display: {Name: '[{"text":"Regeneration","italic":false,"color":"gold"}]', Lore: ['[{"text":"","italic":false}]']}, HideFlags: 127} 1
item replace entity @s[scores={language=1}] enderchest.10 with minecraft:golden_apple{scgui: 1, scgui.action: 10, display: {Name: '[{"text":"Régénération","italic":false,"color":"gold"}]', Lore: ['[{"text":"","italic":false}]']}, HideFlags: 127} 1

# FallDamage
item replace entity @s[scores={language=0}] enderchest.12 with minecraft:leather_boots{scgui: 1, scgui.action: 12, display: {Name: '[{"text":"Fall Damage","italic":false,"color":"gold"}]', Lore: ['[{"text":"","italic":false}]']}, HideFlags: 127} 1
item replace entity @s[scores={language=1}] enderchest.12 with minecraft:leather_boots{scgui: 1, scgui.action: 12, display: {Name: '[{"text":"Dégats de chute","italic":false,"color":"gold"}]', Lore: ['[{"text":"","italic":false}]']}, HideFlags: 127} 1

# InstantPillar
item replace entity @s[scores={language=0}] enderchest.14 with minecraft:scaffolding{scgui: 1, scgui.action: 14, display: {Name: '[{"text":"Instant Pillar","italic":false,"color":"gold"}]', Lore: ['[{"text":"","italic":false}]']}, HideFlags: 127} 1
item replace entity @s[scores={language=1}] enderchest.14 with minecraft:scaffolding{scgui: 1, scgui.action: 14, display: {Name: '[{"text":"Pillier Instantané","italic":false,"color":"gold"}]', Lore: ['[{"text":"","italic":false}]']}, HideFlags: 127} 1

# FastClimb
item replace entity @s[scores={language=0}] enderchest.16 with minecraft:ladder{scgui: 1, scgui.action: 16, display: {Name: '[{"text":"Fast Climb","italic":false,"color":"gold"}]', Lore: ['[{"text":"","italic":false}]']}, HideFlags: 127} 1
item replace entity @s[scores={language=1}] enderchest.16 with minecraft:ladder{scgui: 1, scgui.action: 16, display: {Name: '[{"text":"Montée Rapide","italic":false,"color":"gold"}]', Lore: ['[{"text":"","italic":false}]']}, HideFlags: 127} 1

# # Rafts
# item replace entity @s enderchest.15 with minecraft:spruce_boat{scgui:1, scgui.action:15, display:{Name:'[{"text":"Rafts","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]']}, HideFlags: 127} 1

function scgui:pages/2/test

scoreboard players set @s scgui.change 0