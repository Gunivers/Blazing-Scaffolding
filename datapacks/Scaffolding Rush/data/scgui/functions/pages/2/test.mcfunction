
execute if score TeamNumber options matches 1.. run item modify entity @s enderchest.12 scgui:activate
execute unless score TeamNumber options matches 1.. run item modify entity @s enderchest.12 scgui:desactivate
execute if score TeamNumber options matches 2.. run item modify entity @s enderchest.13 scgui:activate
execute unless score TeamNumber options matches 2.. run item modify entity @s enderchest.13 scgui:desactivate
execute if score TeamNumber options matches 3.. run item modify entity @s enderchest.14 scgui:activate
execute unless score TeamNumber options matches 3.. run item modify entity @s enderchest.14 scgui:desactivate
execute if score TeamNumber options matches 4.. run item modify entity @s enderchest.15 scgui:activate
execute unless score TeamNumber options matches 4.. run item modify entity @s enderchest.15 scgui:desactivate

execute if score RandomTeam options matches 1 run item modify entity @s enderchest.16 scgui:activate
execute unless score RandomTeam options matches 1 run item modify entity @s enderchest.16 scgui:desactivate


execute if score RespawnDelay options matches 1 run item modify entity @s enderchest.21 scgui:activate
execute unless score RespawnDelay options matches 1 run item modify entity @s enderchest.21 scgui:desactivate
execute if score RespawnDelay options matches 3 run item modify entity @s enderchest.22 scgui:activate
execute unless score RespawnDelay options matches 3 run item modify entity @s enderchest.22 scgui:desactivate
execute if score RespawnDelay options matches 5 run item modify entity @s enderchest.23 scgui:activate
execute unless score RespawnDelay options matches 5 run item modify entity @s enderchest.23 scgui:desactivate
execute if score RespawnDelay options matches 10 run item modify entity @s enderchest.24 scgui:activate
execute unless score RespawnDelay options matches 10 run item modify entity @s enderchest.24 scgui:desactivate
execute if score RespawnDelay options matches 20 run item modify entity @s enderchest.25 scgui:activate
execute unless score RespawnDelay options matches 20 run item modify entity @s enderchest.25 scgui:desactivate

