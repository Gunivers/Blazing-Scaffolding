tag @a[team=blue] remove has_egg
clear @a[team=blue] ghast_spawn_egg
clear @a[team=blue] squid_spawn_egg

execute as @e[type=villager,team=blue] run function scaffolding_rush:clean_kill

execute as @s[scores={language=0},nbt=!{SelectedItem: {}}] run item replace entity @s weapon.mainhand with squid_spawn_egg{HideFlags: 24, CanPlaceOn: ["minecraft:scaffolding", "#scaffolding_rush:notowerlobby", "#scaffolding_rush:tower"], CanDestroy: ["minecraft:scaffolding", "#scaffolding_rush:lobby", "#scaffolding_rush:tower"], display: {Name: '{"text":"Villager spawner","italic":false}'}, EntityTag: {id: "minecraft:marker", Tags: ["VillagerSpawnerBlue"]}}
execute as @s[scores={language=0},nbt=!{Inventory: [{id: "minecraft:squid_spawn_egg"}]}] run give @s squid_spawn_egg{HideFlags: 24, CanPlaceOn: ["minecraft:scaffolding", "#scaffolding_rush:notowerlobby", "#scaffolding_rush:tower"], CanDestroy: ["minecraft:scaffolding", "#scaffolding_rush:lobby", "#scaffolding_rush:tower"], display: {Name: '{"text":"Villager spawner","italic":false}'}, EntityTag: {id: "minecraft:marker", Tags: ["VillagerSpawnerBlue"]}}

execute as @s[scores={language=1},nbt=!{SelectedItem: {}}] run item replace entity @s weapon.mainhand with squid_spawn_egg{HideFlags: 24, CanPlaceOn: ["minecraft:scaffolding", "#scaffolding_rush:notowerlobby", "#scaffolding_rush:tower"], CanDestroy: ["minecraft:scaffolding", "#scaffolding_rush:lobby", "#scaffolding_rush:tower"], display: {Name: '{"text":"Villageois d\'équipe","italic":false}'}, EntityTag: {id: "minecraft:marker", Tags: ["VillagerSpawnerBlue"]}}
execute as @s[scores={language=1},nbt=!{Inventory: [{id: "minecraft:squid_spawn_egg"}]}] run give @s squid_spawn_egg{HideFlags: 24, CanPlaceOn: ["minecraft:scaffolding", "#scaffolding_rush:notowerlobby", "#scaffolding_rush:tower"], CanDestroy: ["minecraft:scaffolding", "#scaffolding_rush:lobby", "#scaffolding_rush:tower"], display: {Name: '{"text":"Villageois d\'équipe","italic":false}'}, EntityTag: {id: "minecraft:marker", Tags: ["VillagerSpawnerBlue"]}}


tag @s add has_egg

advancement revoke @a only scaffolding_rush:grab_villager/blue
