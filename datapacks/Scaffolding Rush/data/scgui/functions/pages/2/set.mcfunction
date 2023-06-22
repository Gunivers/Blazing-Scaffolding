
# goback
item replace entity @s[scores={language=0}] enderchest.22 with tipped_arrow{CustomPotionColor: 16777215, scgui: 1, scgui.action: 22, display: {Name: '[{"text":"Back","italic":false,"color":"gold"}]'}, HideFlags: 127} 1
item replace entity @s[scores={language=1}] enderchest.22 with tipped_arrow{CustomPotionColor: 16777215, scgui: 1, scgui.action: 22, display: {Name: '[{"text":"Retour","italic":false,"color":"gold"}]'}, HideFlags: 127} 1

# Regen
item replace entity @s[scores={language=0}] enderchest.2 with minecraft:golden_apple{scgui: 1, scgui.action: 2, display: {Name: '[{"text":"Regeneration","italic":false,"color":"gold"}]', Lore: ['[{"text":"","italic":false}]']}, HideFlags: 127} 1
item replace entity @s[scores={language=1}] enderchest.2 with minecraft:golden_apple{scgui: 1, scgui.action: 2, display: {Name: '[{"text":"Régénération","italic":false,"color":"gold"}]', Lore: ['[{"text":"","italic":false}]']}, HideFlags: 127} 1

# FallDamage
item replace entity @s[scores={language=0}] enderchest.3 with minecraft:leather_boots{scgui: 1, scgui.action: 3, display: {Name: '[{"text":"Fall Damage","italic":false,"color":"gold"}]', Lore: ['[{"text":"","italic":false}]']}, HideFlags: 127} 1
item replace entity @s[scores={language=1}] enderchest.3 with minecraft:leather_boots{scgui: 1, scgui.action: 3, display: {Name: '[{"text":"Dégats de chute","italic":false,"color":"gold"}]', Lore: ['[{"text":"","italic":false}]']}, HideFlags: 127} 1

# Volcano
item replace entity @s[scores={language=0}] enderchest.4 with minecraft:fire_charge{scgui:1, scgui.action:4, display:{Name:'[{"text":"Volcano","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]']}, HideFlags: 127} 1
item replace entity @s[scores={language=1}] enderchest.4 with minecraft:fire_charge{scgui:1, scgui.action:4, display:{Name:'[{"text":"Volcans","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]']}, HideFlags: 127} 1

# InstantPillar
item replace entity @s[scores={language=0}] enderchest.5 with minecraft:scaffolding{scgui: 1, scgui.action: 5, display: {Name: '[{"text":"Instant Pillar","italic":false,"color":"gold"}]', Lore: ['[{"text":"","italic":false}]']}, HideFlags: 127} 1
item replace entity @s[scores={language=1}] enderchest.5 with minecraft:scaffolding{scgui: 1, scgui.action: 5, display: {Name: '[{"text":"Pillier Instantané","italic":false,"color":"gold"}]', Lore: ['[{"text":"","italic":false}]']}, HideFlags: 127} 1

# FastClimb
item replace entity @s[scores={language=0}] enderchest.6 with minecraft:ladder{scgui: 1, scgui.action: 6, display: {Name: '[{"text":"Fast Climb","italic":false,"color":"gold"}]', Lore: ['[{"text":"","italic":false}]']}, HideFlags: 127} 1
item replace entity @s[scores={language=1}] enderchest.6 with minecraft:ladder{scgui: 1, scgui.action: 6, display: {Name: '[{"text":"Montée Rapide","italic":false,"color":"gold"}]', Lore: ['[{"text":"","italic":false}]']}, HideFlags: 127} 1

# # Rafts
# item replace entity @s enderchest.15 with minecraft:spruce_boat{scgui:1, scgui.action:15, display:{Name:'[{"text":"Rafts","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]']}, HideFlags: 127} 1

function scgui:pages/2/test

scoreboard players set @s scgui.change 0