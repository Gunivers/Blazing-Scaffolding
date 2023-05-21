
execute if score Volcano options matches 1.. run item modify entity @s enderchest.15 scgui:activate
execute unless score Volcano options matches 1.. run item modify entity @s enderchest.15 scgui:desactivate

execute if score PerformanceMode options matches 1.. run item modify entity @s enderchest.17 scgui:activate
execute unless score PerformanceMode options matches 1.. run item modify entity @s enderchest.17 scgui:desactivate
