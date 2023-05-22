
#admin
item replace entity @s[scores={language=0}] enderchest.13 with barrier{scgui:1, scgui.action:13, display:{Name:'[{"text":"Sorry, only the admin","color":"red"},{"text":" can change settings","color":"red"}]'}, Enchantments: [{}]} 1
item replace entity @s[scores={language=1}] enderchest.13 with barrier{scgui:1, scgui.action:13, display:{Name:'[{"text":"Désolez, seuleument l\'administrateur","color":"red"},{"text":" peut modifier les paramètres","color":"red"}]'}, Enchantments: [{}]} 1

scoreboard players set @s scgui.change 0