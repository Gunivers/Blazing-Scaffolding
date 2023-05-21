
# goback
item replace entity @s enderchest.0 with arrow{scgui:1, scgui.action:0, display:{Name:'[{"text":"Retour","italic":false,"color":"gold"}]'}} 1

# VillagerForgiveness
item replace entity @s enderchest.11 with minecraft:totem_of_undying{scgui:1, scgui.action:11, display:{Name:'[{"text":"VillagerForgiveness","italic":false,"color":"gold"}]',Lore:['[{"text":"Active ou non les volcans","italic":false}]']}} 1

# InvulnerableVillager
item replace entity @s enderchest.13 with minecraft:netherite_chestplate{scgui:1, scgui.action:13, display:{Name:'[{"text":"InvulnerableVillager","italic":false,"color":"gold"}]',Lore:['[{"text":"Active ou non les volcans","italic":false}]']}} 1

# MovableVillager
item replace entity @s enderchest.15 with minecraft:lead{scgui:1, scgui.action:15, display:{Name:'[{"text":"MovableVillager","italic":false,"color":"gold"}]',Lore:['[{"text":"Active ou non les volcans","italic":false}]']}} 1

function scgui:pages/1/test

scoreboard players set @s scgui.change 0