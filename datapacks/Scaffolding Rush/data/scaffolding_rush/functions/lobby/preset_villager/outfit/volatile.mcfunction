
data merge entity @e[type=minecraft:villager,tag=LobbyPresetVillager,limit=1] {VillagerData: {profession: "minecraft:librarian", level: 1, type: "minecraft:desert"}, Offers: {}}
item replace entity @e[type=minecraft:villager,tag=LobbyPresetVillager,limit=1] armor.head with air
execute as @e[type=minecraft:villager,tag=LobbyPresetVillager,limit=1] run function scaffolding_rush:flag/banner/head/2

data merge entity @e[type=minecraft:text_display,tag=presetLabel,limit=1] {text:'{"text":"Volatile","bold":true,"color":"green"}'}
