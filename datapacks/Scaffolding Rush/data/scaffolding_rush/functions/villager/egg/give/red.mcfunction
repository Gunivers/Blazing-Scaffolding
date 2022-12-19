
execute as @a[team=red] run function scaffolding_rush:villager/egg/clear

execute as @e[type=villager,tag=red_villager] run function scaffolding_rush:clean_kill

execute as @s[scores={language=0},nbt=!{SelectedItem: {}}] run item replace entity @s weapon.mainhand with mooshroom_spawn_egg{HideFlags: 24, CanPlaceOn: ["minecraft:scaffolding", "#scaffolding_rush:notowerlobby", "#scaffolding_rush:tower"], CanDestroy: ["minecraft:scaffolding", "#scaffolding_rush:lobby", "#scaffolding_rush:tower"], display: {Name: '{"text":"Villager spawner","italic":false}'}, EntityTag: {id: "minecraft:marker", Tags: ["VillagerSpawnerRed"]}}
execute as @s[scores={language=0},nbt=!{Inventory: [{id: "minecraft:mooshroom_spawn_egg"}]}] run give @s mooshroom_spawn_egg{HideFlags: 24, CanPlaceOn: ["minecraft:scaffolding", "#scaffolding_rush:notowerlobby", "#scaffolding_rush:tower"], CanDestroy: ["minecraft:scaffolding", "#scaffolding_rush:lobby", "#scaffolding_rush:tower"], display: {Name: '{"text":"Villager spawner","italic":false}'}, EntityTag: {id: "minecraft:marker", Tags: ["VillagerSpawnerRed"]}}

execute as @s[scores={language=1},nbt=!{SelectedItem: {}}] run item replace entity @s weapon.mainhand with mooshroom_spawn_egg{HideFlags: 24, CanPlaceOn: ["minecraft:scaffolding", "#scaffolding_rush:notowerlobby", "#scaffolding_rush:tower"], CanDestroy: ["minecraft:scaffolding", "#scaffolding_rush:lobby", "#scaffolding_rush:tower"], display: {Name: '{"text":"Villageois d\'équipe","italic":false}'}, EntityTag: {id: "minecraft:marker", Tags: ["VillagerSpawnerRed"]}}
execute as @s[scores={language=1},nbt=!{Inventory: [{id: "minecraft:mooshroom_spawn_egg"}]}] run give @s mooshroom_spawn_egg{HideFlags: 24, CanPlaceOn: ["minecraft:scaffolding", "#scaffolding_rush:notowerlobby", "#scaffolding_rush:tower"], CanDestroy: ["minecraft:scaffolding", "#scaffolding_rush:lobby", "#scaffolding_rush:tower"], display: {Name: '{"text":"Villageois d\'équipe","italic":false}'}, EntityTag: {id: "minecraft:marker", Tags: ["VillagerSpawnerRed"]}}

tag @s add has_egg

advancement revoke @a only scaffolding_rush:grab_villager/red