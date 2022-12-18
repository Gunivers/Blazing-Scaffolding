execute as @a run function scgui:test
execute as @a[scores={scgui.page=0}] run function scgui:pages/0/index
execute as @a[scores={scgui.page=1}] run function scgui:pages/1/index
execute as @a[scores={scgui.page=2}] run function scgui:pages/2/index
execute as @a[scores={scgui.page=3}] run function scgui:pages/3/index
execute as @a[scores={scgui.page=4}] run function scgui:pages/4/index
clear @a #scgui:all{scgui:1}
kill @e[nbt={Item:{tag:{scgui:1}}}]