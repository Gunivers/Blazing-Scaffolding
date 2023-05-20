
setblock 8 23 -3 minecraft:gray_concrete
setblock 4 23 6 minecraft:red_concrete
setblock 6 23 4 minecraft:blue_concrete

execute if score TeamNumber options matches 4.. run setblock 6 23 2 minecraft:lime_concrete
execute if score TeamNumber options matches 3.. run setblock 2 23 6 minecraft:yellow_concrete

execute unless score TeamNumber options matches 4.. run setblock 6 23 2 coal_block
execute unless score TeamNumber options matches 3.. run setblock 2 23 6 coal_block

#variable teams
execute if score TeamNumber options matches 3.. run summon area_effect_cloud 2 24 6 {CustomName:'{"text":"Join Yellow","color":"yellow"}',Tags:["lobbyTeam","lobbyColorTeam","3", "lobbyText"],CustomNameVisible: 1,Age: -2147483648, Duration: -1, WaitTime: -2147483648}
execute if score TeamNumber options matches 4.. run summon area_effect_cloud 6 24 2 {CustomName:'{"text":"Join Green","color":"green"}',Tags:["lobbyTeam","lobbyColorTeam","4", "lobbyText"],CustomNameVisible: 1,Age: -2147483648, Duration: -1, WaitTime: -2147483648}

#constant teams
summon area_effect_cloud 6 24 4 {CustomName:'{"text":"Join Blue","color":"blue"}',Tags:["lobbyTeam", "lobbyText"],CustomNameVisible: 1,Age: -2147483648, Duration: -1, WaitTime: -2147483648}
summon area_effect_cloud 4 24 6 {CustomName:'{"text":"Join Red","color":"red"}',Tags:["lobbyTeam","lobbyColorTeam","lobbyText"],CustomNameVisible: 1,Age: -2147483648, Duration: -1, WaitTime: -2147483648}

summon area_effect_cloud 8 24 -3 {CustomName:'{"text":"Spectate","bold":true,"color":"gray"}',Tags:["lobbyTeam","lobbyColorTeam","lobbyText"],CustomNameVisible: 1,Age: -2147483648, Duration: -1, WaitTime: -2147483648}
