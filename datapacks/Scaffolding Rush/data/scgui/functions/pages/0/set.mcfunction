
#preset
item replace entity @s enderchest.1 with scaffolding{scgui:1, scgui.action:1, display:{Name:'[{"text":"Preset :","italic":false,"color":"gold"},{"text":" xxxxxx","italic":false,"color":"gold"}]',Lore:['[{"text":"\\u2666","italic":false,"color":"gold"},{"text":" Vitesse de lave : ","color":"gray"},{"text":"7s"},{"text":"","color":"dark_purple"}]','[{"text":"[...]","italic":false,"color":"white"}]']}} 1
item replace entity @s enderchest.2 with stone_sword{scgui:1, scgui.action:2, display:{Name:'[{"text":"Preset :","italic":false,"color":"gold"},{"text":" xxxxxx","italic":false,"color":"gold"}]',Lore:['[{"text":"\\u2666","italic":false,"color":"gold"},{"text":" Vitesse de lave : ","color":"gray"},{"text":"7s"},{"text":"","color":"dark_purple"}]','[{"text":"[...]","italic":false,"color":"white"}]']}} 1
item replace entity @s enderchest.3 with white_banner{scgui:1, scgui.action:3, display:{Name:'[{"text":"Preset :","italic":false,"color":"gold"},{"text":" xxxxxx","italic":false,"color":"gold"}]',Lore:['[{"text":"\\u2666","italic":false,"color":"gold"},{"text":" Vitesse de lave : ","color":"gray"},{"text":"7s"},{"text":"","color":"dark_purple"}]','[{"text":"[...]","italic":false,"color":"white"}]']}} 1
item replace entity @s enderchest.10 with magma_block{scgui:1, scgui.action:10} 1
item replace entity @s enderchest.11 with spyglass{scgui:1, scgui.action:11} 1
item replace entity @s enderchest.12 with music_disc_pigstep{scgui:1, scgui.action:12} 1
item replace entity @s enderchest.19 with name_tag{scgui:1, scgui.action:13} 7
item replace entity @s enderchest.20 with name_tag{scgui:1, scgui.action:14} 8
item replace entity @s enderchest.21 with name_tag{scgui:1, scgui.action:15} 9


#options
item replace entity @s enderchest.8 with command_block{scgui:1, scgui.action:8, display:{Name:'[{"text":"Options","italic":false,"color":"gold"}]',Lore:['[{"text":"Configurez les différentes options ici","italic":false}]']}} 1


#start
item replace entity @s enderchest.15 with lime_terracotta{scgui:1, scgui.action:15, display:{Name:'[{"text":"Start the game","italic":false,"color":"gold"}]',Lore:['[{"text":"Cliquez pour commencer la partie !","italic":false}]']}} 1


#admin
item replace entity @s enderchest.26 with white_banner{scgui:1, scgui.action:28, BlockEntityTag:{Patterns:[{Pattern:mr,Color:9},{Pattern:bs,Color:8},{Pattern:cs,Color:7},{Pattern:bo,Color:8},{Pattern:ms,Color:15},{Pattern:hh,Color:8},{Pattern:mc,Color:8},{Pattern:bo,Color:15}]}, HideFlags:126, display:{Name:'[{"text":"Je suis l\'admin","italic":false,"color":"gold"}]',Lore:['[{"text":"Soyez le seul a pouvoir configurer","italic":false}]']}} 1

function scgui:pages/0/test

scoreboard players set @s scgui.change 0