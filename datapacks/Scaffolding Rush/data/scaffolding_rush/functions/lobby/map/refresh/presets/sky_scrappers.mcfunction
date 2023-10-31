
data merge entity @e[type=minecraft:villager,tag=LobbyPresetVillager,limit=1] {VillagerData: {profession: "minecraft:weaponsmith", level: 1, type: "minecraft:taiga"}, Offers: {}}
execute as @e[type=minecraft:villager,tag=LobbyPresetVillager,limit=1] run function scaffolding_rush:game/flag/banner/head/5

data merge entity @e[type=minecraft:text_display,tag=presetLabel,limit=1] {text:'{"translate":"blazing_scaffolding.sky_scrappers","bold":true,"color":"green"}'}
