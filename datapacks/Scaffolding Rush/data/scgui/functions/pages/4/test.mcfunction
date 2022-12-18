
execute if score UseSnowball options matches 1 run item modify entity @s enderchest.11 scgui:activate
execute if score UseGravel options matches 1 run item modify entity @s enderchest.15 scgui:activate

execute unless score UseSnowball options matches 1 run item modify entity @s enderchest.11 scgui:desactivate
execute unless score UseGravel options matches 1 run item modify entity @s enderchest.15 scgui:desactivate
