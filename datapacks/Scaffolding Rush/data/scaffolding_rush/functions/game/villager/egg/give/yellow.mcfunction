
execute as @a[team=yellow] run function scaffolding_rush:game/villager/egg/clear

execute as @e[type=villager,tag=yellow_villager] run function scaffolding_rush:clean_kill

execute as @s[nbt=!{SelectedItem: {}}] run loot replace entity @s weapon.mainhand loot scaffolding_rush:item/egg
execute as @s[nbt=!{Inventory: [{id: "minecraft:blaze_spawn_egg"}]}] run loot give @s loot scaffolding_rush:item/egg

tag @s add has_egg

advancement revoke @a only scaffolding_rush:grab_villager/yellow
