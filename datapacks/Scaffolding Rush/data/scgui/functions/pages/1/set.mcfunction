
# goback
item replace entity @s[scores={option.language=0}] enderchest.22 with tipped_arrow{CustomPotionColor: 16777215, scgui: 1, scgui.action: 22, display: {Name: '[{"text":"Back","italic":false,"color":"gold"}]'}, HideFlags: 127} 1
item replace entity @s[scores={option.language=1}] enderchest.22 with tipped_arrow{CustomPotionColor: 16777215, scgui: 1, scgui.action: 22, display: {Name: '[{"text":"Retour","italic":false,"color":"gold"}]'}, HideFlags: 127} 1

# #villager.can_respawn
item replace entity @s[scores={option.language=0}] enderchest.3 with minecraft:totem_of_undying{scgui: 1, scgui.action: 3, display: {Name: '[{"text":"Revival","italic":false,"color":"gold"}]', Lore: ['[{"text":"After the villager dies,","italic":false}]', '[{"text":"a villager\'s egg is given to the team","italic":false}]']}, HideFlags: 127} 1
item replace entity @s[scores={option.language=1}] enderchest.3 with minecraft:totem_of_undying{scgui: 1, scgui.action: 3, display: {Name: '[{"text":"Réapparition","italic":false,"color":"gold"}]', Lore: ['[{"text":"Après la mort du villageois,","italic":false}]', '[{"text":"un œuf de villageois est donné à l\'équipe","italic":false}]']}, HideFlags: 127} 1


# MovableVillager
item replace entity @s[scores={option.language=0}] enderchest.5 with minecraft:lead{scgui: 1, scgui.action: 5, display: {Name: '[{"text":"Moveable","italic":false,"color":"gold"}]', Lore: ['[{"text":"Players can move the villager","italic":false}]']}, HideFlags: 127} 1
item replace entity @s[scores={option.language=1}] enderchest.5 with minecraft:lead{scgui: 1, scgui.action: 5, display: {Name: '[{"text":"Déplaçable","italic":false,"color":"gold"}]', Lore: ['[{"text":"Les joueurs peuvent déplacer le villageois","italic":false}]']}, HideFlags: 127} 1

function scgui:pages/1/test

scoreboard players set @s scgui.change 0