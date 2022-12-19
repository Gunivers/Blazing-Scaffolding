item replace entity @s enderchest.0 with arrow{scgui:1, scgui.action:0, display:{Name:'[{"text":"Retour","italic":false,"color":"gold"}]'}} 1


item replace entity @s enderchest.11 with crimson_fence{scgui:1, scgui.action:11, display:{Name:'[{"text":"Worldborder","italic":false,"color":"gold"}]',Lore:['[{"text":"Option pour regler la zone de jeu","italic":false}]']}} 1
item replace entity @s enderchest.12 with golden_apple{scgui:1, scgui.action:12, display:{Name:'[{"text":"Régénération","italic":false,"color":"gold"}]',Lore:['[{"text":"Active ou non la régénération des joueurs","italic":false}]']}} 1
item replace entity @s enderchest.13 with chainmail_boots{scgui:1, scgui.action:13, display:{Name:'[{"text":"Dégats de chute","italic":false,"color":"gold"}]',Lore:['[{"text":"Active ou non les dégats de chute","italic":false}]']}} 1
item replace entity @s enderchest.14 with chicken_spawn_egg{scgui:1, scgui.action:14, display:{Name:'[{"text":"Oeuf d\'équipes","italic":false,"color":"gold"}]',Lore:['[{"text":"Permet de choisir la position de votre base","italic":false}]']}} 1
item replace entity @s enderchest.16 with tnt{scgui:1, scgui.action:16, display:{Name:'[{"text":"Mode performance","italic":false,"color":"gold"}]',Lore:['[{"text":"A utiliser pour les PC moins puissant","italic":false}]']}} 1


function scgui:pages/6/test

scoreboard players set @s scgui.change 0