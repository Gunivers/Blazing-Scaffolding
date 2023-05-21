
# Start
item replace entity @s enderchest.8 with minecraft:lime_terracotta{scgui: 1, scgui.action: 8, display: {Name: '[{"text":"Démarrer la partie","italic":false,"bold": true,"color":"gold"}]'}} 1

# Villager
item replace entity @s enderchest.11 with minecraft:villager_spawn_egg{scgui: 1, scgui.action: 11, display: {Name: '[{"text":"Villageois","italic":false,"color":"gold"}]', Lore: ['["",{"text":"\\u25b6","color":"gold"},{"text":" Temps de réapparition"}]', '["",{"text":"\\u25b6","color":"gold"},{"text":" Œufs"}]']}} 1
# Gameplay
item replace entity @s enderchest.12 with minecraft:lodestone{scgui: 1, scgui.action: 12, display: {Name: '[{"text":"Gameplay","italic":false,"color":"gold"}]', Lore: ['["",{"text":"\\u25b6","color":"gold"},{"text":" Taille de la zone de jeu"}]', '["",{"text":"\\u25b6","color":"gold"},{"text":" Régénération"}]', '["",{"text":"\\u25b6","color":"gold"},{"text":" Dégats de chute"}]', '["",{"text":"\\u25b6","color":"gold"},{"text":" Œufs d\'équipe"}]', '["",{"text":"\\u25b6","color":"gold"},{"text":" Mode perfommance"}]']}} 1
# Items
item replace entity @s enderchest.13 with minecraft:snowball{scgui: 1, scgui.action: 13, display: {Name: '[{"text":"Items","italic":false,"color":"gold"}]', Lore: ['["",{"text":"\\u25b6","color":"gold"},{"text":" Boule de neige"}]', '["",{"text":"\\u25b6","color":"gold"},{"text":" Sable"}]']}} 1

# Volcano
item replace entity @s enderchest.15 with minecraft:fire_charge{scgui:1, scgui.action:15, display:{Name:'[{"text":"Volcano :","italic":false,"color":"gold"},{"text":" Boule de neige","italic":false,"color":"gold"}]',Lore:['[{"text":"Active ou non les volcans","italic":false}]']}} 1

# Perf
item replace entity @s enderchest.17 with tnt{scgui:1, scgui.action:17, display:{Name:'[{"text":"Mode performance","italic":false,"color":"gold"}]',Lore:['[{"text":"A utiliser pour les PC moins puissant","italic":false}]']}} 1

# Admin
item replace entity @s enderchest.26 with minecraft:white_banner{scgui: 1, scgui.action: 26, BlockEntityTag: {Patterns: [{Pattern: mr, Color: 9}, {Pattern: bs, Color: 8}, {Pattern: cs, Color: 7}, {Pattern: bo, Color: 8}, {Pattern: ms, Color: 15}, {Pattern: hh, Color: 8}, {Pattern: mc, Color: 8}, {Pattern: bo, Color: 15}]}, HideFlags: 126, display: {Name: '[{"text":"Je suis l\'admin","italic":false,"color":"gold"}]', Lore: ['[{"text":"Vous seul peut configurer la partie","italic":false}]']}} 1

function scgui:pages/0/test
scoreboard players set @s scgui.change 0
