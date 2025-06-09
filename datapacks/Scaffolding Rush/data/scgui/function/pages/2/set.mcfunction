
# goback
item replace entity @s enderchest.22 with tipped_arrow{CustomPotionColor: 16777215, scgui: 1, scgui.action: 22, display: {Name: '[{"translate":"blazing_scaffolding.back","italic":false,"color":"gold"}]'}, HideFlags: 127} 1

# Regen
item replace entity @s enderchest.2 with minecraft:golden_apple{scgui: 1, scgui.action: 2, display: {Name: '[{"translate":"blazing_scaffolding.regeneration","italic":false,"color":"gold"}]', Lore: ['[{"text":"","italic":false}]']}, HideFlags: 127} 1

# #gameplay.fall_damage.enabled
item replace entity @s enderchest.3 with minecraft:leather_boots{scgui: 1, scgui.action: 3, display: {Name: '[{"translate":"blazing_scaffolding.fall_damage","italic":false,"color":"gold"}]', Lore: ['[{"text":"","italic":false}]']}, HideFlags: 127} 1

# Volcano
item replace entity @s enderchest.4 with minecraft:fire_charge{scgui:1, scgui.action:4, display:{Name:'[{"translate":"blazing_scaffolding.volcano","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]']}, HideFlags: 127} 1

# #gameplay.instant_pillar.enabled
item replace entity @s enderchest.5 with minecraft:scaffolding{scgui: 1, scgui.action: 5, display: {Name: '[{"text":"Instant Pillar","italic":false,"color":"gold"}]', Lore: ['[{"text":"","italic":false}]']}, HideFlags: 127} 1

# #gameplay.fast_climb.enabled
item replace entity @s enderchest.6 with minecraft:ladder{scgui: 1, scgui.action: 6, display: {Name: '[{"translate":"blazing_scaffolding.fast_climb","italic":false,"color":"gold"}]', Lore: ['[{"text":"","italic":false}]']}, HideFlags: 127} 1

# # Rafts
# item replace entity @s enderchest.15 with minecraft:spruce_boat{scgui:1, scgui.action:15, display:{Name:'[{"text":"Rafts","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]']}, HideFlags: 127} 1

function scgui:pages/2/test

scoreboard players set @s scgui.change 0