tag @a[team=yellow] remove has_egg
clear @a[team=yellow] ghast_spawn_egg
clear @a[team=yellow] blaze_spawn_egg

execute as @e[type=villager,tag=yellow_villager] run function scaffolding_rush:clean_kill

execute as @s[scores={language=0},nbt=!{SelectedItem: {}}] run item replace entity @s weapon.mainhand with blaze_spawn_egg{HideFlags: 24, CanPlaceOn: ["minecraft:scaffolding", "#scaffolding_rush:notowerlobby", "#scaffolding_rush:tower"], CanDestroy: ["minecraft:scaffolding", "#scaffolding_rush:lobby", "#scaffolding_rush:tower"], display: {Name: '{"text":"Villager spawner","italic":false}'}, EntityTag: {id: "minecraft:marker", Tags: ["VillagerSpawnerYellow"]}}
execute as @s[scores={language=0},nbt=!{Inventory: [{id: "minecraft:blaze_spawn_egg"}]}] run give @s blaze_spawn_egg{HideFlags: 24, CanPlaceOn: ["minecraft:scaffolding", "#scaffolding_rush:notowerlobby", "#scaffolding_rush:tower"], CanDestroy: ["minecraft:scaffolding", "#scaffolding_rush:lobby", "#scaffolding_rush:tower"], display: {Name: '{"text":"Villager spawner","italic":false}'}, EntityTag: {id: "minecraft:marker", Tags: ["VillagerSpawnerYellow"]}}

execute as @s[scores={language=1},nbt=!{SelectedItem: {}}] run item replace entity @s weapon.mainhand with blaze_spawn_egg{HideFlags: 24, CanPlaceOn: ["minecraft:scaffolding", "#scaffolding_rush:notowerlobby", "#scaffolding_rush:tower"], CanDestroy: ["minecraft:scaffolding", "#scaffolding_rush:lobby", "#scaffolding_rush:tower"], display: {Name: '{"text":"Villageois d\'équipe","italic":false}'}, EntityTag: {id: "minecraft:marker", Tags: ["VillagerSpawnerYellow"]}}
execute as @s[scores={language=1},nbt=!{Inventory: [{id: "minecraft:blaze_spawn_egg"}]}] run give @s blaze_spawn_egg{HideFlags: 24, CanPlaceOn: ["minecraft:scaffolding", "#scaffolding_rush:notowerlobby", "#scaffolding_rush:tower"], CanDestroy: ["minecraft:scaffolding", "#scaffolding_rush:lobby", "#scaffolding_rush:tower"], display: {Name: '{"text":"Villageois d\'équipe","italic":false}'}, EntityTag: {id: "minecraft:marker", Tags: ["VillagerSpawnerYellow"]}}

tag @s add has_egg

advancement revoke @a only scaffolding_rush:grab_villager/yellow
