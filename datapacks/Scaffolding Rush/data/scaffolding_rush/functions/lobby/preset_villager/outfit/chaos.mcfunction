
data merge entity @e[type=minecraft:villager,tag=LobbyPresetVillager,limit=1] {VillagerData: {profession: "minecraft:weaponsmith", level: 1, type: "minecraft:swamp"}, Offers: {}}
item replace entity @e[type=minecraft:villager,tag=LobbyPresetVillager,limit=1] armor.head with air

data merge entity @e[type=minecraft:text_display,tag=presetLabel,limit=1] {text:'["",{"text":"|||","obfuscated":true,"color":"#9900FF"},{"text":" Chaos ","color":"#9900FF"},{"text":"|||","obfuscated":true,"color":"#9900FF"}]'}
