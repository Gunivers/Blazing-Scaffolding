
function scgui:pages/blank

#admin
item replace entity @s enderchest.13 with barrier{scgui:1, scgui.action:13, display:{Name:'[{"translate":"blazing_scaffolding.sorry_only_the_admin","color":"red"},{"translate":"blazing_scaffolding.can_change_settings","color":"red"}]'}, Enchantments: [{}]} 1

loot replace entity @s enderchest.18 loot scgui:empty_cell
loot replace entity @s enderchest.19 loot scgui:empty_cell
loot replace entity @s enderchest.20 loot scgui:empty_cell
loot replace entity @s enderchest.21 loot scgui:empty_cell
loot replace entity @s enderchest.22 loot scgui:empty_cell
loot replace entity @s enderchest.23 loot scgui:empty_cell
loot replace entity @s enderchest.24 loot scgui:empty_cell
loot replace entity @s enderchest.25 loot scgui:empty_cell
loot replace entity @s enderchest.26 loot scgui:empty_cell

scoreboard players set @s scgui.change 0