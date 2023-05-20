
setblock 8 23 -3 minecraft:gray_concrete
setblock 4 23 6 minecraft:red_concrete
setblock 6 23 4 minecraft:blue_concrete

execute if score TeamNumber options matches 4.. run setblock 6 23 2 minecraft:lime_concrete
execute if score TeamNumber options matches 3.. run setblock 2 23 6 minecraft:yellow_concrete

execute unless score TeamNumber options matches 4.. run setblock 6 23 2 coal_block
execute unless score TeamNumber options matches 3.. run setblock 2 23 6 coal_block

#variable teams
execute if score TeamNumber options matches 3.. run summon minecraft:text_display 2 25 6 {text:'{"text":"Join Yellow","color":"yellow"}',Tags:["lobbyTeam", "lobbyColorTeam", "lobbyText", "3"], billboard: 'center', default_background: 1b}
execute if score TeamNumber options matches 4.. run summon minecraft:text_display 6 25 2 {text:'{"text":"Join Green","color":"green"}',Tags:["lobbyTeam", "lobbyColorTeam", "lobbyText", "4"], billboard: 'center', default_background: 1b}

#constant teams
summon minecraft:text_display 6 25 4 {text:'{"text":"Join Blue","color":"blue"}',Tags:["lobbyTeam", "lobbyColorTeam", "lobbyText"], billboard: 'center', default_background: 1b}
summon minecraft:text_display 4 25 6 {text:'{"text":"Join Red","color":"red"}',Tags:["lobbyTeam", "lobbyColorTeam", "lobbyText"], billboard: 'center', default_background: 1b}

summon minecraft:text_display 8 25 -2.2 {text:'{"text":"Spectate","bold":true,"color":"gray"}',Tags:["lobbyTeam", "lobbyRandomTeam", "lobbyText"], billboard: 'center', default_background: 1b}