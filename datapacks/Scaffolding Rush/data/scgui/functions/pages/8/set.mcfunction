item replace entity @s enderchest.0 with arrow{scgui:1, scgui.action:0, display:{Name:'[{"text":"Retour","italic":false,"color":"gold"}]'}} 1


item replace entity @s enderchest.10 with magma_block{scgui:1, scgui.action:10, display:{Name:'[{"text":"Vitesse de la lave","italic":false,"color":"gold"}]',Lore:['[{"text":"Combien de temps entre chaque monté de bloc","italic":false}]']}} 1
item replace entity @s enderchest.12 with green_terracotta{scgui:1, scgui.action:12, display:{Name:'[{"text":"1s","italic":false,"color":"gold"}]',Lore:['[{"text":"1 seconde entre chaque montée","italic":false}]']}} 1
item replace entity @s enderchest.13 with lime_terracotta{scgui:1, scgui.action:13, display:{Name:'[{"text":"3s","italic":false,"color":"gold"}]',Lore:['[{"text":"3 secondes entre chaque montée","italic":false}]']}} 3
item replace entity @s enderchest.14 with yellow_terracotta{scgui:1, scgui.action:14, display:{Name:'[{"text":"5s","italic":false,"color":"gold"}]',Lore:['[{"text":"5 secondes entre chaque montée","italic":false}]']}} 5
item replace entity @s enderchest.15 with orange_terracotta{scgui:1, scgui.action:15, display:{Name:'[{"text":"7s","italic":false,"color":"gold"}]',Lore:['[{"text":"7 secondes entre chaque montée","italic":false}]']}} 7
item replace entity @s enderchest.16 with red_terracotta{scgui:1, scgui.action:16, display:{Name:'[{"text":"10s","italic":false,"color":"gold"}]',Lore:['[{"text":"10 secondes entre chaque montée","italic":false}]']}} 10

item replace entity @s enderchest.19 with scaffolding{scgui:1, scgui.action:19, display:{Name:'[{"text":"Limite de contruction","italic":false,"color":"gold"}]',Lore:['[{"text":"Les joueurs ne pourront construire au dessus","italic":false}]']}} 1
item replace entity @s enderchest.21 with green_terracotta{scgui:1, scgui.action:21, display:{Name:'[{"text":"5 blocks","italic":false,"color":"gold"}]',Lore:['[{"text":"Vous ne pourrez construire après 5 blocks au dessus de la lave","italic":false}]']}} 5
item replace entity @s enderchest.22 with lime_terracotta{scgui:1, scgui.action:22, display:{Name:'[{"text":"10 blocks","italic":false,"color":"gold"}]',Lore:['[{"text":"Vous ne pourrez construire après 10 blocks au dessus de la lave","italic":false}]']}} 10
item replace entity @s enderchest.23 with yellow_terracotta{scgui:1, scgui.action:23, display:{Name:'[{"text":"15 blocks","italic":false,"color":"gold"}]',Lore:['[{"text":"Vous ne pourrez construire après 15 blocks au dessus de la lave","italic":false}]']}} 15
item replace entity @s enderchest.24 with orange_terracotta{scgui:1, scgui.action:24, display:{Name:'[{"text":"20 blocks","italic":false,"color":"gold"}]',Lore:['[{"text":"Vous ne pourrez construire après 20 blocks au dessus de la lave","italic":false}]']}} 20
item replace entity @s enderchest.25 with red_terracotta{scgui:1, scgui.action:25, display:{Name:'[{"text":"30 blocks","italic":false,"color":"gold"}]',Lore:['[{"text":"Vous ne pourrez construire après 30 blocks au dessus de la lave","italic":false}]']}} 30


function scgui:pages/8/test

scoreboard players set @s scgui.change 0