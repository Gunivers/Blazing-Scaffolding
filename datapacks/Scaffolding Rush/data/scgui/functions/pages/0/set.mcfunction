
# Start
item replace entity @s[scores={language=0}] enderchest.8 with minecraft:lime_terracotta{scgui: 1, scgui.action: 8, display: {Name: '[{"text":"Start Game","italic":false,"bold": true,"color":"gold"}]'}, HideFlags: 127} 1
item replace entity @s[scores={language=1}] enderchest.8 with minecraft:lime_terracotta{scgui: 1, scgui.action: 8, display: {Name: '[{"text":"Démarrer la partie","italic":false,"bold": true,"color":"gold"}]'}, HideFlags: 127} 1

# Villager
item replace entity @s[scores={language=0}] enderchest.11 with minecraft:villager_spawn_egg{scgui: 1, scgui.action: 11, display: {Name: '[{"text":"Villager\'s options","italic":false,"color":"gold"}]', Lore: ['["",{"text":"\\u25b6","color":"gold"},{"text":" Revival"}]', '["",{"text":"\\u25b6","color":"gold"},{"text":" Invincibility"}]', '["",{"text":"\\u25b6","color":"gold"},{"text":" Moveable"}]']}, HideFlags: 127} 1
item replace entity @s[scores={language=1}] enderchest.11 with minecraft:villager_spawn_egg{scgui: 1, scgui.action: 11, display: {Name: '[{"text":"Options du Villageois","italic":false,"color":"gold"}]', Lore: ['["",{"text":"\\u25b6","color":"gold"},{"text":" Réapparition"}]', '["",{"text":"\\u25b6","color":"gold"},{"text":" Invincibilité"}]', '["",{"text":"\\u25b6","color":"gold"},{"text":" Déplaçable"}]']}, HideFlags: 127} 1
# Gameplay
item replace entity @s[scores={language=0}] enderchest.12 with minecraft:lodestone{scgui: 1, scgui.action: 12, display: {Name: '[{"text":"Gameplay","italic":false,"color":"gold"}]', Lore: ['["",{"text":"\\u25b6","color":"gold"},{"text":" Regeneration"}]', '["",{"text":"\\u25b6","color":"gold"},{"text":" Fall Damage"}]', '["",{"text":"\\u25b6","color":"gold"},{"text":" Instant Pillar"}]', '["",{"text":"\\u25b6","color":"gold"},{"text":" Fast Climb"}]']}, HideFlags: 127} 1
item replace entity @s[scores={language=1}] enderchest.12 with minecraft:lodestone{scgui: 1, scgui.action: 12, display: {Name: '[{"text":"Gameplay","italic":false,"color":"gold"}]', Lore: ['["",{"text":"\\u25b6","color":"gold"},{"text":" Régénération"}]', '["",{"text":"\\u25b6","color":"gold"},{"text":" Dégats de chute"}]', '["",{"text":"\\u25b6","color":"gold"},{"text":" Pillier Instantané"}]', '["",{"text":"\\u25b6","color":"gold"},{"text":" Montée Rapide"}]']}, HideFlags: 127} 1
# Items
item replace entity @s[scores={language=0}] enderchest.13 with minecraft:snowball{scgui: 1, scgui.action: 13, display: {Name: '[{"text":"Items","italic":false,"color":"gold"}]', Lore: ['["",{"text":"\\u25b6","color":"gold"},{"text":" Sand"}]', '["",{"text":"\\u25b6","color":"gold"},{"text":" Bumping Arrow"}]', '["",{"text":"\\u25b6","color":"gold"},{"text":" Fireball"}]', '["",{"text":"\\u25b6","color":"gold"},{"text":" Ender Pearl"}]']}, HideFlags: 127} 1
item replace entity @s[scores={language=1}] enderchest.13 with minecraft:snowball{scgui: 1, scgui.action: 13, display: {Name: '[{"text":"Objets","italic":false,"color":"gold"}]', Lore: ['["",{"text":"\\u25b6","color":"gold"},{"text":" Sable"}]', '["",{"text":"\\u25b6","color":"gold"},{"text":" Flèche coup de poing"}]','["",{"text":"\\u25b6","color":"gold"},{"text":" Boule de feu"}]', '["",{"text":"\\u25b6","color":"gold"},{"text":" Perle de l\'Ender"}]']}, HideFlags: 127} 1

# Volcano
item replace entity @s[scores={language=0}] enderchest.15 with minecraft:fire_charge{scgui:1, scgui.action:15, display:{Name:'[{"text":"Volcano","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]']}, HideFlags: 127} 1
item replace entity @s[scores={language=1}] enderchest.15 with minecraft:fire_charge{scgui:1, scgui.action:15, display:{Name:'[{"text":"Volcans","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]']}, HideFlags: 127} 1

# Perf
item replace entity @s[scores={language=0}] enderchest.18 with tnt{scgui:1, scgui.action:18, display:{Name:'[{"text":"Performance mode","italic":false,"color":"gold"}]',Lore:['[{"text":"To be used for less powerful PCs","italic":false}]']}, HideFlags: 127} 1
item replace entity @s[scores={language=1}] enderchest.18 with tnt{scgui:1, scgui.action:18, display:{Name:'[{"text":"Mode performance","italic":false,"color":"gold"}]',Lore:['[{"text":"A utiliser pour les PC moins puissant","italic":false}]']}, HideFlags: 127} 1

# Admin
item replace entity @s[scores={language=0}] enderchest.26 with minecraft:white_banner{scgui: 1, scgui.action: 26, BlockEntityTag: {Patterns: [{Pattern: mr, Color: 9}, {Pattern: bs, Color: 8}, {Pattern: cs, Color: 7}, {Pattern: bo, Color: 8}, {Pattern: ms, Color: 15}, {Pattern: hh, Color: 8}, {Pattern: mc, Color: 8}, {Pattern: bo, Color: 15}]}, HideFlags: 127, display: {Name: '[{"text":"I am the admin","italic":false,"color":"gold"}]', Lore: ['[{"text":"Only you will be able to configure the game","italic":false}]']}} 1
item replace entity @s[scores={language=1}] enderchest.26 with minecraft:white_banner{scgui: 1, scgui.action: 26, BlockEntityTag: {Patterns: [{Pattern: mr, Color: 9}, {Pattern: bs, Color: 8}, {Pattern: cs, Color: 7}, {Pattern: bo, Color: 8}, {Pattern: ms, Color: 15}, {Pattern: hh, Color: 8}, {Pattern: mc, Color: 8}, {Pattern: bo, Color: 15}]}, HideFlags: 127, display: {Name: '[{"text":"Je suis l\'admin","italic":false,"color":"gold"}]', Lore: ['[{"text":"Vous seul pourrez configurer la partie","italic":false}]']}} 1

function scgui:pages/0/test
scoreboard players set @s scgui.change 0
