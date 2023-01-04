item replace entity @s enderchest.0 with arrow{scgui:1, scgui.action:0, display:{Name:'[{"text":"Retour","italic":false,"color":"gold"}]'}} 1










item replace entity @s enderchest.10 with leather_helmet{scgui:1, scgui.action:11, display:{Name:'[{"text":"Nombre d\'équipes","italic":false,"color":"gold"}]',Lore:['[{"text":"Choisissez le nombre d\'équipes différentes","italic":false}]']}} 1

item replace entity @s enderchest.12 with red_wool{scgui:1, scgui.action:13, display:{Name:'[{"text":"1 équipe","italic":false,"color":"gold"}]',Lore:['[{"text":"2 équipes minimum","italic":false}]']}} 1
item replace entity @s enderchest.13 with blue_wool{scgui:1, scgui.action:14, display:{Name:'[{"text":"2 équipes","italic":false,"color":"gold"}]',Lore:['[{"text":"Rouge et Bleu","italic":false}]']}} 1
item replace entity @s enderchest.14 with yellow_wool{scgui:1, scgui.action:15, display:{Name:'[{"text":"3 équipes","italic":false,"color":"gold"}]',Lore:['[{"text":"Rouge, Bleu et Jaune","italic":false}]']}} 1
item replace entity @s enderchest.15 with green_wool{scgui:1, scgui.action:16, display:{Name:'[{"text":"4 équipes","italic":false,"color":"gold"}]',Lore:['[{"text":"Rouge, Bleu, Jaune et Vert","italic":false}]']}} 1
item replace entity @s enderchest.16 with purple_wool{scgui:1, scgui.action:17, display:{Name:'[{"text":"Équipes aléatoires","italic":false,"color":"gold"}]',Lore:['[{"text":"Les joueurs seront mis dans des équipes aléatoires","italic":false}]']}} 1



item replace entity @s enderchest.19 with respawn_anchor{scgui:1, scgui.action:21, display:{Name:'[{"text":"Temps de réaparition","italic":false,"color":"gold"}]',Lore:['[{"text":"Combien de temps les joueurs mettront avant de respawn","italic":false}]']}} 1

item replace entity @s enderchest.21 with lime_terracotta{scgui:1, scgui.action:23, display:{Name:'[{"text":"1s","italic":false,"color":"gold"}]',Lore:['[{"text":"1 seconde d\'attente","italic":false}]']}} 1
item replace entity @s enderchest.22 with green_terracotta{scgui:1, scgui.action:24, display:{Name:'[{"text":"3s","italic":false,"color":"gold"}]',Lore:['[{"text":"3 secondes d\'attente","italic":false}]']}} 3
item replace entity @s enderchest.23 with yellow_terracotta{scgui:1, scgui.action:25, display:{Name:'[{"text":"5s","italic":false,"color":"gold"}]',Lore:['[{"text":"5 secondes d\'attente","italic":false}]']}} 5
item replace entity @s enderchest.24 with orange_terracotta{scgui:1, scgui.action:26, display:{Name:'[{"text":"10s","italic":false,"color":"gold"}]',Lore:['[{"text":"10 secondes d\'attente","italic":false}]']}} 10
item replace entity @s enderchest.25 with red_terracotta{scgui:1, scgui.action:27, display:{Name:'[{"text":"20s","italic":false,"color":"gold"}]',Lore:['[{"text":"20 secondes d\'attente","italic":false}]']}} 20

function scgui:pages/2/test

scoreboard players set @s scgui.change 0