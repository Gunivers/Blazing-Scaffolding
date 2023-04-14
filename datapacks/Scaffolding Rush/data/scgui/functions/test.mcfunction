execute store result score @s scgui.item if data entity @s EnderItems[{}]
execute store result score @s scgui.item2 if data entity @s EnderItems[{tag:{scgui:1}}]
execute unless score @s scgui.item = @s scgui.item2 run function scgui:pages/clear