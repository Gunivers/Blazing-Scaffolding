
scoreboard players reset @a scgui.testclear
execute as @a store success score @s scgui.testclear run clear @s #scgui:all{scgui:1}

execute if entity @e[nbt={Item:{tag:{scgui:1}}}] run scoreboard players set @a scgui.change 1
kill @e[nbt={Item:{tag:{scgui:1}}}]

execute if score Admin options matches 1 as @a[tag=!admin,scores={scgui.change=1}] run scoreboard players set @s scgui.page -1
execute unless score Admin options matches 1 as @a[scores={scgui.page=-1}] run function scgui:pages/goto_menu

execute as @a unless score @s scgui.page matches -100..100 run function scgui:pages/goto_menu

execute as @a[scores={scgui.page=1..,scgui.change=1}] run scoreboard players operation @s scgui.XFreeze = @s XEntity
execute as @a[scores={scgui.page=1..,scgui.change=1}] run scoreboard players operation @s scgui.ZFreeze = @s ZEntity

execute as @a[scores={scgui.page=1..}] unless score @s scgui.XFreeze = @s XEntity run function scgui:pages/goto_menu
execute as @a[scores={scgui.page=1..}] unless score @s scgui.ZFreeze = @s ZEntity run function scgui:pages/goto_menu

execute as @a[scores={scgui.page=-1}] run function scgui:pages/-1/index
execute as @a[scores={scgui.page=0}] run function scgui:pages/0/index
execute as @a[scores={scgui.page=1}] run function scgui:pages/1/index
execute as @a[scores={scgui.page=2}] run function scgui:pages/2/index
execute as @a[scores={scgui.page=3}] run function scgui:pages/3/index

execute as @a[scores={scgui.testclear=1}] run function scgui:pages/fill_blank
execute as @a[scores={scgui.testclear=1}] run scoreboard players set @s scgui.change 1
