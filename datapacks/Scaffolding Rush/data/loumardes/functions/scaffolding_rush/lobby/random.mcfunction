function loumardes:scaffolding_rush/team/join/killbase
kill @e[type=minecraft:area_effect_cloud,tag=lobbyTeam]
team leave @a

fill -4 3 2 -5 3 1 minecraft:light_gray_concrete_powder
fill 5 3 1 4 3 2 minecraft:purple_concrete_powder
summon area_effect_cloud -4.0 4 2.0 {CustomName:'{"text":"Spectate","bold":true,"color":"gray"}',Tags:["lobbyTeam"],CustomNameVisible: 1,Age: -2147483648, Duration: -1, WaitTime: -2147483648}
summon area_effect_cloud 5.0 4 2.0 {CustomName:'{"text":"Join Game","color":"dark_purple"}',Tags:["lobbyTeam"],CustomNameVisible: 1,Age: -2147483648, Duration: -1, WaitTime: -2147483648}
