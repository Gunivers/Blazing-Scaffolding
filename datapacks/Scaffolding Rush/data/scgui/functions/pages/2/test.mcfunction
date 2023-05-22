
execute if score Regen options matches 1.. run item modify entity @s enderchest.10 scgui:activate
execute unless score Regen options matches 1.. run item modify entity @s enderchest.10 scgui:desactivate

execute if score FallDamage options matches 1.. run item modify entity @s enderchest.12 scgui:activate
execute unless score FallDamage options matches 1.. run item modify entity @s enderchest.12 scgui:desactivate

execute if score InstantPillar options matches 1.. run item modify entity @s enderchest.14 scgui:activate
execute unless score InstantPillar options matches 1.. run item modify entity @s enderchest.14 scgui:desactivate

execute if score FastClimb options matches 1.. run item modify entity @s enderchest.16 scgui:activate
execute unless score FastClimb options matches 1.. run item modify entity @s enderchest.16 scgui:desactivate

# execute if score Rafts options matches 1.. run item modify entity @s enderchest.15 scgui:activate
# execute unless score Rafts options matches 1.. run item modify entity @s enderchest.15 scgui:desactivate

