
fill -3 3 -2 -2 3 -3 minecraft:light_gray_concrete_powder
fill -3 3 6 -4 3 5 minecraft:red_concrete_powder
fill 4 3 6 3 3 5 minecraft:blue_concrete_powder

execute if score TeamNumber options matches 4.. run fill -4 3 2 -5 3 1 minecraft:lime_concrete_powder
execute if score TeamNumber options matches 3.. run fill 5 3 1 4 3 2 minecraft:yellow_concrete_powder

#variable teams
execute if score TeamNumber options matches 3.. run summon area_effect_cloud 5.0 4 2.0 {CustomName:'{"text":"Join Yellow","color":"yellow"}',Tags:["lobbyTeam","lobbyColorTeam","3", "lobbyText"],CustomNameVisible: 1,Age: -2147483648, Duration: -1, WaitTime: -2147483648}
execute if score TeamNumber options matches 4.. run summon area_effect_cloud -4.0 4 2.0 {CustomName:'{"text":"Join Green","color":"green"}',Tags:["lobbyTeam","lobbyColorTeam","4", "lobbyText"],CustomNameVisible: 1,Age: -2147483648, Duration: -1, WaitTime: -2147483648}

#constant teams
summon area_effect_cloud 4.0 4 6.0 {CustomName:'{"text":"Join Blue","color":"blue"}',Tags:["lobbyTeam", "lobbyText"],CustomNameVisible: 1,Age: -2147483648, Duration: -1, WaitTime: -2147483648}
summon area_effect_cloud -3.0 4 6.0 {CustomName:'{"text":"Join Red","color":"red"}',Tags:["lobbyTeam","lobbyColorTeam","lobbyText"],CustomNameVisible: 1,Age: -2147483648, Duration: -1, WaitTime: -2147483648}

summon area_effect_cloud -2.0 4 -2.0 {CustomName:'{"text":"Spectate","bold":true,"color":"gray"}',Tags:["lobbyTeam","lobbyColorTeam","lobbyText"],CustomNameVisible: 1,Age: -2147483648, Duration: -1, WaitTime: -2147483648}
