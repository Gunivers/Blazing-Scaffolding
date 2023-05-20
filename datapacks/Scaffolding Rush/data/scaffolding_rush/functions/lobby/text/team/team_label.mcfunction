
setblock 8 23 -3 minecraft:gray_concrete
setblock 4 23 6 minecraft:red_concrete
setblock 6 23 4 minecraft:blue_concrete

execute if score TeamNumber options matches 4.. run setblock 6 23 2 minecraft:lime_concrete
execute if score TeamNumber options matches 3.. run setblock 2 23 6 minecraft:yellow_concrete

execute unless score TeamNumber options matches 4.. run setblock 6 23 2 coal_block
execute unless score TeamNumber options matches 3.. run setblock 2 23 6 coal_block

#variable teams
execute if score TeamNumber options matches 3.. run summon minecraft:text_display 2 25 6 {text: '{"text":"Join Yellow","color":"yellow"}', Tags: ["lobbyTeam", "lobbyColorTeam", "lobbyText", "teamYellow", "3"], billboard: 'center', default_background: 1b, brightness: {block: 10, sky: 10}}
execute if score TeamNumber options matches 3.. run summon minecraft:interaction 2 24.0 6 {width: 1, height: 1.5d, Tags: ["lobbyTeam", "lobbyColorTeam", "lobbyInteraction", "teamYellow", "3"]}
execute unless entity @e[type=villager,tag=teamJoinVillager,tag=teamYellow] run summon villager 2 21.9 6 {Attributes: [{Base: 0d, Name: "minecraft:generic.movement_speed"}, {Name: "minecraft:generic.knockback_resistance", Base: 1d}], Tags: ["lobbyTeam", "teamJoinVillager", "teamYellow", "teamJoinVillagerColor"], VillagerData: {type: "minecraft:jungle"}, NoAI: 1b, PersistenceRequired: 1b, NoGravity: 1b, CanPickUpLoot: 0b, Silent: 1, Invulnerable: 1, Offers: {}, Rotation: [180f, 0f]}
execute if score TeamNumber options matches 3.. run teleport @e[type=villager,tag=teamJoinVillager,tag=teamYellow] 2 23 6
execute unless score TeamNumber options matches 3.. run teleport @e[type=villager,tag=teamJoinVillager,tag=teamYellow] 2 21.9 6

execute if score TeamNumber options matches 4.. run summon minecraft:text_display 6 25 2 {text: '{"text":"Join Green","color":"green"}', Tags: ["lobbyTeam", "lobbyColorTeam", "lobbyText", "teamGreen", "4"], billboard: 'center', default_background: 1b, brightness: {block: 10, sky: 10}}
execute if score TeamNumber options matches 4.. run summon minecraft:interaction 6 24.0 2 {width: 1, height: 1.5d, Tags: ["lobbyTeam", "lobbyColorTeam", "lobbyInteraction", "teamGreen", "4"]}
execute unless entity @e[type=villager,tag=teamJoinVillager,tag=teamGreen] run summon villager 6 21.9 2 {Attributes: [{Base: 0d, Name: "minecraft:generic.movement_speed"}, {Name: "minecraft:generic.knockback_resistance", Base: 1d}], Tags: ["lobbyTeam", "teamJoinVillager", "teamGreen", "teamJoinVillagerColor"], VillagerData: {profession: "minecraft:nitwit"}, NoAI: 1b, PersistenceRequired: 1b, NoGravity: 1b, CanPickUpLoot: 0b, Silent: 1, Invulnerable: 1, Offers: {}, Rotation: [90f, 0f]}
execute if score TeamNumber options matches 4.. run teleport @e[type=villager,tag=teamJoinVillager,tag=teamGreen] 6 23 2
execute unless score TeamNumber options matches 4.. run teleport @e[type=villager,tag=teamJoinVillager,tag=teamGreen] 6 21.9 2

#constant teams
summon minecraft:text_display 6 25 4 {text: '{"text":"Join Blue","color":"blue"}', Tags: ["lobbyTeam", "lobbyColorTeam", "lobbyText", "teamBlue"], billboard: 'center', default_background: 1b, brightness: {block: 10, sky: 10}}
summon minecraft:interaction 6 24.0 4 {width: 1, height: 1.5d, Tags: ["lobbyTeam", "lobbyColorTeam", "lobbyInteraction", "teamBlue"]}
execute unless entity @e[type=villager,tag=teamJoinVillager,tag=teamBlue] run summon villager 6 21.9 4 {Attributes: [{Base: 0d, Name: "minecraft:generic.movement_speed"}, {Name: "minecraft:generic.knockback_resistance", Base: 1d}], Tags: ["lobbyTeam", "teamJoinVillager", "teamBlue", "teamJoinVillagerColor"], VillagerData: {type: "minecraft:snow"}, NoAI: 1b, PersistenceRequired: 1b, NoGravity: 1b, CanPickUpLoot: 0b, Silent: 1, Invulnerable: 1, Offers: {}, Rotation: [90f, 0f]}
teleport @e[type=villager,tag=teamJoinVillager,tag=teamBlue] 6 23 4


summon minecraft:text_display 4 25 6 {text: '{"text":"Join Red","color":"red"}', Tags: ["lobbyTeam", "lobbyColorTeam", "lobbyText", "teamRed"], billboard: 'center', default_background: 1b, brightness: {block: 10, sky: 10}}
summon minecraft:interaction 4 24.0 6 {width: 1, height: 1.5d, Tags: ["lobbyTeam", "lobbyColorTeam", "lobbyInteraction", "teamRed"]}
execute unless entity @e[type=villager,tag=teamJoinVillager,tag=teamRed] run summon villager 4 21.9 6 {Attributes: [{Base: 0d, Name: "minecraft:generic.movement_speed"}, {Name: "minecraft:generic.knockback_resistance", Base: 1d}], Tags: ["lobbyTeam", "teamJoinVillager", "teamRed", "teamJoinVillagerColor"], VillagerData: {type: "minecraft:savanna"}, NoAI: 1b, PersistenceRequired: 1b, NoGravity: 1b, CanPickUpLoot: 0b, Silent: 1, Invulnerable: 1, Offers: {}, Rotation: [180f, 0f]}
teleport @e[type=villager,tag=teamJoinVillager,tag=teamRed] 4 23 6

teleport @e[type=villager,tag=teamJoinVillagerRandom] 4 21.9 6
