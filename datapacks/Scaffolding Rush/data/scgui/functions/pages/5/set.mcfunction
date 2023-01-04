item replace entity @s enderchest.0 with arrow{scgui:1, scgui.action:0, display:{Name:'[{"text":"Retour","italic":false,"color":"gold"}]'}} 1



item replace entity @s enderchest.13 with scaffolding{scgui:1, scgui.action:13, display:{Name:'[{"text":"Pilliers instantanés","italic":false,"color":"gold"}]',Lore:['[{"text":"Créer automatiquement une tour d\'échaffaudage lorsque vous atteignez la limite","italic":false}]']}} 1


function scgui:pages/5/test

scoreboard players set @s scgui.change 0