item replace entity @s enderchest.0 with arrow{scgui:1, scgui.action:0, display:{Name:'[{"text":"Retour","italic":false,"color":"gold"}]'}} 1



item replace entity @s enderchest.11 with snowball{scgui:1, scgui.action:11, display:{Name:'[{"text":"Item :","italic":false,"color":"gold"},{"text":" Boule de neige","italic":false,"color":"gold"}]',Lore:['[{"text":"Active ou non la boule de neige","italic":false}]']}} 1

item replace entity @s enderchest.15 with gravel{scgui:1, scgui.action:15, display:{Name:'[{"text":"Item :","italic":false,"color":"gold"},{"text":" Gravier","italic":false,"color":"gold"}]',Lore:['[{"text":"Active ou non le gravier","italic":false}]']}} 1

function scgui:pages/4/test

scoreboard players set @s scgui.change 0