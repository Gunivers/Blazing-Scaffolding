kill @e[type=minecraft:area_effect_cloud,tag=lobbyRandom]
execute if score TeamNumber options matches 3.. run kill @e[type=minecraft:area_effect_cloud,tag=lobbyRandom,tag=3]
execute if score TeamNumber options matches 4.. run kill @e[type=minecraft:area_effect_cloud,tag=lobbyRandom,tag=4]
team leave @a

fill -3 3 -2 -2 3 -3 minecraft:light_gray_concrete_powder
fill -3 3 6 -4 3 5 minecraft:red_concrete_powder
fill 4 3 6 3 3 5 minecraft:blue_concrete_powder
execute if score TeamNumber options matches 4.. run fill -4 3 2 -5 3 1 minecraft:lime_concrete_powder
execute if score TeamNumber options matches 3.. run fill 5 3 1 4 3 2 minecraft:yellow_concrete_powder
execute unless entity @e[type=minecraft:area_effect_cloud,tag=lobbyTeam,name="Join Blue"] run summon area_effect_cloud 4.0 4 6.0 {CustomName:'{"text":"Join Blue","color":"blue"}',Tags:["lobbyTeam"],CustomNameVisible: 1,Age: -2147483648, Duration: -1, WaitTime: -2147483648}
execute if score TeamNumber options matches 3.. unless entity @e[type=minecraft:area_effect_cloud,tag=lobbyTeam,name="Join Yellow"] run summon area_effect_cloud 5.0 4 2.0 {CustomName:'{"text":"Join Yellow","color":"yellow"}',Tags:["lobbyTeam","3"],CustomNameVisible: 1,Age: -2147483648, Duration: -1, WaitTime: -2147483648}
execute if score TeamNumber options matches 4.. unless entity @e[type=minecraft:area_effect_cloud,tag=lobbyTeam,name="Join Green"] run summon area_effect_cloud -4.0 4 2.0 {CustomName:'{"text":"Join Green","color":"green"}',Tags:["lobbyTeam","4"],CustomNameVisible: 1,Age: -2147483648, Duration: -1, WaitTime: -2147483648}
execute unless entity @e[type=minecraft:area_effect_cloud,tag=lobbyTeam,name="Join Red"] run summon area_effect_cloud -3.0 4 6.0 {CustomName:'{"text":"Join Red","color":"red"}',Tags:["lobbyTeam"],CustomNameVisible: 1,Age: -2147483648, Duration: -1, WaitTime: -2147483648}
execute unless entity @e[type=minecraft:area_effect_cloud,tag=lobbyTeam,name="Spectate"] run summon area_effect_cloud -2.0 4 -2.0 {CustomName:'{"text":"Spectate","bold":true,"color":"gray"}',Tags:["lobbyTeam"],CustomNameVisible: 1,Age: -2147483648, Duration: -1, WaitTime: -2147483648}
