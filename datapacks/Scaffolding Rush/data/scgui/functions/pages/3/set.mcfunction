item replace entity @s enderchest.0 with arrow{scgui:1, scgui.action:0, display:{Name:'[{"text":"Retour","italic":false,"color":"gold"}]'}} 1


item replace entity @s enderchest.10 with mooshroom_spawn_egg{scgui:1, scgui.action:10, display:{Name:'[{"text":"Temps de réapparition du villageois","italic":false,"color":"gold"}]',Lore:['[{"text":"Durée pour récupérer l\'œuf du villageois","italic":false}]']}} 1

item replace entity @s enderchest.12 with lime_terracotta{scgui:1, scgui.action:12, display:{Name:'[{"text":"3s","italic":false,"color":"gold"}]',Lore:['[{"text":"3 secondes pour récupérer le villageois","italic":false}]']}} 3
item replace entity @s enderchest.13 with yellow_terracotta{scgui:1, scgui.action:13, display:{Name:'[{"text":"5s","italic":false,"color":"gold"}]',Lore:['[{"text":"5 secondes pour récupérer le villageois","italic":false}]']}} 5
item replace entity @s enderchest.14 with orange_terracotta{scgui:1, scgui.action:14, display:{Name:'[{"text":"10s","italic":false,"color":"gold"}]',Lore:['[{"text":"10 secondes pour récupérer le villageois","italic":false}]']}} 10
item replace entity @s enderchest.15 with red_terracotta{scgui:1, scgui.action:15, display:{Name:'[{"text":"20s","italic":false,"color":"gold"}]',Lore:['[{"text":"30 secondes pour récupérer le villageois","italic":false}]']}} 30


function scgui:pages/3/test

scoreboard players set @s scgui.change 0