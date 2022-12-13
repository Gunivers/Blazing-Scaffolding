tag @a[team=green] remove has_egg
clear @a[team=green] ghast_spawn_egg
clear @a[team=green] slime_spawn_egg

execute as @e[type=villager,team=green] run function scaffolding_rush:clean_kill

execute as @s[scores={language=0},nbt=!{SelectedItem: {}}] run item replace entity @s weapon.mainhand with slime_spawn_egg{HideFlags: 24, CanPlaceOn: ["minecraft:scaffolding", "#scaffolding_rush:notowerlobby", "#scaffolding_rush:tower"], CanDestroy: ["minecraft:scaffolding", "#scaffolding_rush:lobby", "#scaffolding_rush:tower"], display: {Name: '{"text":"Villager spawner","italic":false}'}, EntityTag: {id: "minecraft:marker", Tags: ["VillagerSpawnerGreen"]}}
execute as @s[scores={language=0},nbt=!{Inventory: [{id: "minecraft:slime_spawn_egg"}]}] run give @s slime_spawn_egg{HideFlags: 24, CanPlaceOn: ["minecraft:scaffolding", "#scaffolding_rush:notowerlobby", "#scaffolding_rush:tower"], CanDestroy: ["minecraft:scaffolding", "#scaffolding_rush:lobby", "#scaffolding_rush:tower"], display: {Name: '{"text":"Villager spawner","italic":false}'}, EntityTag: {id: "minecraft:marker", Tags: ["VillagerSpawnerGreen"]}}

execute as @s[scores={language=1},nbt=!{SelectedItem: {}}] run item replace entity @s weapon.mainhand with slime_spawn_egg{HideFlags: 24, CanPlaceOn: ["minecraft:scaffolding", "#scaffolding_rush:notowerlobby", "#scaffolding_rush:tower"], CanDestroy: ["minecraft:scaffolding", "#scaffolding_rush:lobby", "#scaffolding_rush:tower"], display: {Name: '{"text":"Villageois d\'équipe","italic":false}'}, EntityTag: {id: "minecraft:marker", Tags: ["VillagerSpawnerGreen"]}}
execute as @s[scores={language=1},nbt=!{Inventory: [{id: "minecraft:slime_spawn_egg"}]}] run give @s slime_spawn_egg{HideFlags: 24, CanPlaceOn: ["minecraft:scaffolding", "#scaffolding_rush:notowerlobby", "#scaffolding_rush:tower"], CanDestroy: ["minecraft:scaffolding", "#scaffolding_rush:lobby", "#scaffolding_rush:tower"], display: {Name: '{"text":"Villageois d\'équipe","italic":false}'}, EntityTag: {id: "minecraft:marker", Tags: ["VillagerSpawnerGreen"]}}

tag @s add has_egg

advancement revoke @a only scaffolding_rush:grab_villager/green
