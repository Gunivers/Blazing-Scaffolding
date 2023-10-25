
data merge entity @e[type=minecraft:villager,tag=LobbyPresetVillager,limit=1] {VillagerData: {profession: "minecraft:toolsmith", level: 1, type: "minecraft:savanna"}, Offers: {}}
item replace entity @e[type=minecraft:villager,tag=LobbyPresetVillager,limit=1] armor.head with air

data merge entity @e[type=minecraft:text_display,tag=presetLabel,limit=1] {text:'{"translate":"blazing_scaffolding.volcano","bold":true,"color":"dark_red"}'}
