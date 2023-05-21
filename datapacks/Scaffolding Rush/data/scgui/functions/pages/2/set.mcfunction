
# goback
item replace entity @s enderchest.0 with arrow{scgui:1, scgui.action:0, display:{Name:'[{"text":"Retour","italic":false,"color":"gold"}]'}} 1

# Regen
item replace entity @s enderchest.11 with minecraft:golden_apple{scgui:1, scgui.action:11, display:{Name:'[{"text":"Regen","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]']}} 1

# FallDamage
item replace entity @s enderchest.12 with minecraft:leather_boots{scgui:1, scgui.action:12, display:{Name:'[{"text":"FallDamage","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]']}} 1

# InstantPillar
item replace entity @s enderchest.13 with minecraft:scaffolding{scgui:1, scgui.action:13, display:{Name:'[{"text":"InstantPillar","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]']}} 1

# FastClimb
item replace entity @s enderchest.14 with minecraft:ladder{scgui:1, scgui.action:14, display:{Name:'[{"text":"FastClimb","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]']}} 1

# # Rafts
# item replace entity @s enderchest.15 with minecraft:spruce_boat{scgui:1, scgui.action:15, display:{Name:'[{"text":"Rafts","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]']}} 1

function scgui:pages/2/test

scoreboard players set @s scgui.change 0