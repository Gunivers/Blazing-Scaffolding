function scaffolding_rush:team/join/killbase

setblock 8 23 -3 minecraft:gray_concrete
setblock 4 23 6 minecraft:purple_concrete
setblock 6 23 4 minecraft:coal_block
setblock 6 23 2 minecraft:coal_block
setblock 2 23 6 minecraft:coal_block


summon area_effect_cloud 8 24 -3 {CustomName:'{"text":"Spectate","bold":true,"color":"gray"}',Tags:["lobbyTeam", "lobbyRandomTeam", "lobbyText"],CustomNameVisible: 1,Age: -2147483648, Duration: -1, WaitTime: -2147483648}
summon area_effect_cloud 4 24 6 {CustomName:'{"text":"Join Game","color":"dark_purple"}',Tags:["lobbyTeam","lobbyRandomTeam", "lobbyText"],CustomNameVisible: 1,Age: -2147483648, Duration: -1, WaitTime: -2147483648}
