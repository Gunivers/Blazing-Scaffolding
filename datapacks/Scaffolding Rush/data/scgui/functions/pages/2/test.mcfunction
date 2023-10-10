
execute if score #gameplay.regeneration.enabled options matches 1.. run item replace entity @s enderchest.11 with minecraft:lime_dye{scgui: 1, scgui.action: 11}
execute unless score #gameplay.regeneration.enabled options matches 1.. run item replace entity @s enderchest.11 with minecraft:gray_dye{scgui: 1, scgui.action: 11}

execute if score #gameplay.regeneration.enabled options matches 1.. run item modify entity @s enderchest.11 scgui:activate
execute unless score #gameplay.regeneration.enabled options matches 1.. run item modify entity @s enderchest.11 scgui:desactivate

execute if score #gameplay.fall_damage.enabled options matches 1.. run item replace entity @s enderchest.12 with minecraft:lime_dye{scgui: 1, scgui.action: 12}
execute unless score #gameplay.fall_damage.enabled options matches 1.. run item replace entity @s enderchest.12 with minecraft:gray_dye{scgui: 1, scgui.action: 12}

execute if score #gameplay.fall_damage.enabled options matches 1.. run item modify entity @s enderchest.12 scgui:activate
execute unless score #gameplay.fall_damage.enabled options matches 1.. run item modify entity @s enderchest.12 scgui:desactivate

execute if score Volcano options matches 1.. run item replace entity @s enderchest.13 with minecraft:lime_dye{scgui: 1, scgui.action: 13}
execute unless score Volcano options matches 1.. run item replace entity @s enderchest.13 with minecraft:gray_dye{scgui: 1, scgui.action: 13}

execute if score Volcano options matches 1.. run item modify entity @s enderchest.13 scgui:activate
execute unless score Volcano options matches 1.. run item modify entity @s enderchest.13 scgui:desactivate

execute if score #gameplay.instant_pillar.enabled options matches 1.. run item replace entity @s enderchest.14 with minecraft:lime_dye{scgui: 1, scgui.action: 14}
execute unless score #gameplay.instant_pillar.enabled options matches 1.. run item replace entity @s enderchest.14 with minecraft:gray_dye{scgui: 1, scgui.action: 14}

execute if score #gameplay.instant_pillar.enabled options matches 1.. run item modify entity @s enderchest.14 scgui:activate
execute unless score #gameplay.instant_pillar.enabled options matches 1.. run item modify entity @s enderchest.14 scgui:desactivate

execute if score #gameplay.fast_climb.enabled options matches 1.. run item replace entity @s enderchest.15 with minecraft:lime_dye{scgui: 1, scgui.action: 15}
execute unless score #gameplay.fast_climb.enabled options matches 1.. run item replace entity @s enderchest.15 with minecraft:gray_dye{scgui: 1, scgui.action: 15}

execute if score #gameplay.fast_climb.enabled options matches 1.. run item modify entity @s enderchest.15 scgui:activate
execute unless score #gameplay.fast_climb.enabled options matches 1.. run item modify entity @s enderchest.15 scgui:desactivate

# execute if score Rafts options matches 1.. run item modify entity @s enderchest.15 scgui:activate
# execute unless score Rafts options matches 1.. run item modify entity @s enderchest.15 scgui:desactivate

