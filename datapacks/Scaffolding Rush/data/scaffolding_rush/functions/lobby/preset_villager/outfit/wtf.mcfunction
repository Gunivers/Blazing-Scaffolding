
data merge entity @e[type=minecraft:villager,tag=LobbyPresetVillager,limit=1] {VillagerData: {profession: "minecraft:none", level: 1, type: "minecraft:plains"}, Offers: {}}
item replace entity @e[type=minecraft:villager,tag=LobbyPresetVillager,limit=1] armor.head with minecraft:tnt

data merge entity @e[type=minecraft:text_display,tag=presetLabel,limit=1] {text:'["",{"text":"a?! ","obfuscated":true,"color":"aqua"},{"text":"WTF","color":"aqua"},{"text":" ?:§","obfuscated":true,"color":"aqua"}]'}
