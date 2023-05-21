execute as @a run function scgui:test
execute as @a[scores={scgui.page=-1}] run function scgui:pages/-1/index
execute as @a[scores={scgui.page=0}] run function scgui:pages/0/index
execute as @a[scores={scgui.page=1}] run function scgui:pages/1/index
execute as @a[scores={scgui.page=2}] run function scgui:pages/2/index
execute as @a[scores={scgui.page=3}] run function scgui:pages/3/index

execute if score Admin options matches 1 as @a[tag=!admin] unless entity @s[scores={scgui.page=-1}] run function scgui:pages/-1/load
execute unless score Admin options matches 1 as @a[scores={scgui.page=-1}] run function scgui:pages/0/set
execute unless score Admin options matches 1 as @a[scores={scgui.page=-1}] run scoreboard players set @s scgui.page 0

execute as @a unless score @s scgui.page matches -100..100 run scoreboard players set @s scgui.page 0


clear @a #scgui:all{scgui:1}
kill @e[nbt={Item:{tag:{scgui:1}}}]