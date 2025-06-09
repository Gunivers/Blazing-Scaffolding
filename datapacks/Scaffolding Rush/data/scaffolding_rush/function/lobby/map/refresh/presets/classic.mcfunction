
data merge entity @e[type=minecraft:villager,tag=LobbyPresetVillager,limit=1] {VillagerData: {profession: "minecraft:nitwit", level: 1, type: "minecraft:plains"}, Offers: {}}
item replace entity @e[type=minecraft:villager,tag=LobbyPresetVillager,limit=1] armor.head with air

data merge entity @e[type=minecraft:text_display,tag=presetLabel,limit=1] {text:'{"translate":"blazing_scaffolding.classic","bold":true,"color":"gold"}'}
