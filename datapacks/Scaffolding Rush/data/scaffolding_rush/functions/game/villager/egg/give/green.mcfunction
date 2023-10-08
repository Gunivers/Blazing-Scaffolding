
execute as @a[team=green] run function scaffolding_rush:game/villager/egg/clear

execute as @e[type=villager,tag=green_villager] run function utils:clean_kill

execute as @s[nbt=!{SelectedItem: {}}] run loot replace entity @s weapon.mainhand loot scaffolding_rush:egg
execute as @s[nbt=!{Inventory: [{id: "minecraft:slime_spawn_egg"}]}] run loot give @s loot scaffolding_rush:egg

tag @s add player.item.have_egg

advancement revoke @a only scaffolding_rush:grab_villager/green
