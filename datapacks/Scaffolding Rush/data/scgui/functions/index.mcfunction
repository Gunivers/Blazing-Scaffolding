execute as @a run function scgui:test
execute as @a[scores={scgui.page=0}] run function scgui:pages/0/index
execute as @a[scores={scgui.page=1}] run function scgui:pages/1/index
execute as @a[scores={scgui.page=2}] run function scgui:pages/2/index
execute as @a[scores={scgui.page=3}] run function scgui:pages/3/index
execute as @a[scores={scgui.page=4}] run function scgui:pages/4/index
execute as @a[scores={scgui.page=5}] run function scgui:pages/5/index
execute as @a[scores={scgui.page=6}] run function scgui:pages/6/index
execute as @a[scores={scgui.page=7}] run function scgui:pages/7/index
execute as @a[scores={scgui.page=8}] run function scgui:pages/8/index

clear @a #scgui:all{scgui:1}
kill @e[nbt={Item:{tag:{scgui:1}}}]