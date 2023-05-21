
data merge entity @e[type=minecraft:villager,tag=LobbyPresetVillager,limit=1] {VillagerData: {profession: "minecraft:weaponsmith", level: 1, type: "minecraft:taiga"}, Offers: {}}
execute as @e[type=minecraft:villager,tag=LobbyPresetVillager,limit=1] run function scaffolding_rush:flag/banner/head/5

data merge entity @e[type=minecraft:text_display,tag=presetLabel,limit=1] {text:'{"text":"Bridge Chaos","bold":true,"color":"green"}'}
