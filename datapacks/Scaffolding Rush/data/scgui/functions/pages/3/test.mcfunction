
execute if score UseSand options matches 1.. run item modify entity @s enderchest.10 scgui:activate
execute unless score UseSand options matches 1.. run item modify entity @s enderchest.10 scgui:desactivate

execute if score UseSnowball options matches 1.. run item modify entity @s enderchest.12 scgui:activate
execute unless score UseSnowball options matches 1.. run item modify entity @s enderchest.12 scgui:desactivate

execute if score UseFireball options matches 1.. run item modify entity @s enderchest.14 scgui:activate
execute unless score UseFireball options matches 1.. run item modify entity @s enderchest.14 scgui:desactivate

execute if score UseEnderPearl options matches 1.. run item modify entity @s enderchest.16 scgui:activate
execute unless score UseEnderPearl options matches 1.. run item modify entity @s enderchest.16 scgui:desactivate
