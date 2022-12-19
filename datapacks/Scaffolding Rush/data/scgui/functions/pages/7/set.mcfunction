item replace entity @s enderchest.0 with arrow{scgui:1, scgui.action:0, display:{Name:'[{"text":"Retour","italic":false,"color":"gold"}]'}} 1


item replace entity @s enderchest.2 with green_wool{scgui:1, scgui.action:2, display:{Name:'[{"text":"+ 10","italic":false,"color":"green"}]'}} 10
item replace entity @s enderchest.3 with green_wool{scgui:1, scgui.action:3, display:{Name:'[{"text":"+ 20","italic":false,"color":"green"}]'}} 20
item replace entity @s enderchest.4 with green_wool{scgui:1, scgui.action:4, display:{Name:'[{"text":"+ 30","italic":false,"color":"green"}]'}} 30
item replace entity @s enderchest.5 with green_wool{scgui:1, scgui.action:5, display:{Name:'[{"text":"+ 40","italic":false,"color":"green"}]'}} 40
item replace entity @s enderchest.6 with green_wool{scgui:1, scgui.action:6, display:{Name:'[{"text":"+ 50","italic":false,"color":"green"}]'}} 50

item replace entity @s enderchest.13 with crimson_fence{scgui:1, scgui.action:13, display:{Name:'[{"text":"WorldBorder : ","italic":false,"color":"gold"}]',Lore:['[{"text":"Taille de la zone de jeu","italic":false}]']}} 1

item replace entity @s enderchest.20 with red_wool{scgui:1, scgui.action:20, display:{Name:'[{"text":"- 10","italic":false,"color":"red"}]'}} 10
item replace entity @s enderchest.21 with red_wool{scgui:1, scgui.action:21, display:{Name:'[{"text":"- 20","italic":false,"color":"red"}]'}} 20
item replace entity @s enderchest.22 with red_wool{scgui:1, scgui.action:22, display:{Name:'[{"text":"- 30","italic":false,"color":"red"}]'}} 30
item replace entity @s enderchest.23 with red_wool{scgui:1, scgui.action:23, display:{Name:'[{"text":"- 40","italic":false,"color":"red"}]'}} 40
item replace entity @s enderchest.24 with red_wool{scgui:1, scgui.action:24, display:{Name:'[{"text":"- 50","italic":false,"color":"red"}]'}} 50

function scgui:pages/7/test

scoreboard players set @s scgui.change 0