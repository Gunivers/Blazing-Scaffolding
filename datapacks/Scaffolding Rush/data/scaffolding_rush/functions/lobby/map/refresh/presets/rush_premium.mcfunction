
data merge entity @e[type=minecraft:villager,tag=LobbyPresetVillager,limit=1] {VillagerData: {profession: "minecraft:fletcher", level: 1, type: "minecraft:swamp"}, Offers: {}}
item replace entity @e[type=minecraft:villager,tag=LobbyPresetVillager,limit=1] armor.head with air

data merge entity @e[type=minecraft:text_display,tag=presetLabel,limit=1] {text:'{"translate":"blazing_scaffolding.rush_prenium","bold":true,"color":"#7027FF"}'}

particle minecraft:crit -2 24.7 6 0 0 0 0.5 5 normal
