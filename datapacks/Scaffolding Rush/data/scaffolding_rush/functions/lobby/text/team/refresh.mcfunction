
execute if score TeamNumber options matches 2 run data merge entity @e[type=minecraft:text_display,tag=teamNumberLabel,limit=1] {text: '{"text":"2","bold":true,"color":"gold"}'}
execute if score TeamNumber options matches 3 run data merge entity @e[type=minecraft:text_display,tag=teamNumberLabel,limit=1] {text: '{"text":"3","bold":true,"color":"gold"}'}
execute if score TeamNumber options matches 4 run data merge entity @e[type=minecraft:text_display,tag=teamNumberLabel,limit=1] {text: '{"text":"4","bold":true,"color":"gold"}'}

kill @e[type=!villager,tag=lobbyTeam]
execute if score RandomTeam options matches 0 run function scaffolding_rush:lobby/text/team/team_label
execute if score RandomTeam options matches 1 run function scaffolding_rush:lobby/text/team/random_label

summon minecraft:text_display 8 25 -2.2 {text: '{"text":"Spectate","bold":true,"color":"gray"}', Tags: ["lobbyTeam", "lobbyText"], billboard: 'center', default_background: 1b, brightness: {block: 10, sky: 10}}
summon minecraft:interaction 8 24.0 -3 {width: 1, height: 1.5d, Tags: ["lobbyTeam", "lobbyColorTeam", "lobbyInteraction", "teamSpectate"]}
execute unless entity @e[type=villager,tag=teamSpectate] run summon villager 8 23 -3 {Attributes: [{Base: 0d, Name: "minecraft:generic.movement_speed"}, {Name: "minecraft:generic.knockback_resistance", Base: 1d}], Tags: ["lobbyTeam", "teamJoinVillager", "teamSpectate"], VillagerData: {type: "minecraft:plains"}, Invulnerable: 1b, NoAI: 1b, Silent: 1b}

execute if score RandomTeam options matches 0 run data merge entity @e[type=minecraft:text_display,tag=lobbyRandomLabel,limit=1] {text: '{"text":"random","color":"gray","strikethrough":true}'}
execute if score RandomTeam options matches 1 run data merge entity @e[type=minecraft:text_display,tag=lobbyRandomLabel,limit=1] {text: '{"text":"random","color":"dark_purple","strikethrough":false}'}
