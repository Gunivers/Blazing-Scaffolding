
# goback
item replace entity @s enderchest.0 with tipped_arrow{CustomPotionColor:16777215,scgui:1, scgui.action:0, display:{Name:'[{"text":"Retour","italic":false,"color":"gold"}]'}} 1

# UseSand
item replace entity @s enderchest.11 with minecraft:sand{scgui:1, scgui.action:11, display:{Name:'[{"text":"UseSand","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]']}} 1

# UseSnowball
item replace entity @s enderchest.12 with minecraft:snowball{scgui:1, scgui.action:12, display:{Name:'[{"text":"UseSnowball","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]']}} 1

# UseFireball
item replace entity @s enderchest.13 with minecraft:egg{scgui:1, scgui.action:13, display:{Name:'[{"text":"UseFireball","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]']}} 1

# UseEnderPearl
item replace entity @s enderchest.14 with minecraft:ender_pearl{scgui:1, scgui.action:14, display:{Name:'[{"text":"UseEnderPearl","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]']}} 1

function scgui:pages/3/test

scoreboard players set @s scgui.change 0