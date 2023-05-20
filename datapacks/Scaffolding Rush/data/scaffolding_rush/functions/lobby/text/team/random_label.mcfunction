function scaffolding_rush:team/join/killbase

setblock 8 23 -3 minecraft:gray_concrete
setblock 4 23 6 minecraft:purple_concrete
setblock 6 23 4 minecraft:coal_block
setblock 6 23 2 minecraft:coal_block
setblock 2 23 6 minecraft:coal_block

summon minecraft:text_display 8 25 -2.2 {text:'{"text":"Spectate","bold":true,"color":"gray"}',Tags:["lobbyTeam", "lobbyRandomTeam", "lobbyText"], billboard: 'center', default_background: 1b}
summon minecraft:text_display 4 25 6 {text:'{"text":"Join Game","color":"dark_purple"}',Tags:["lobbyTeam", "lobbyRandomTeam", "lobbyText"], billboard: 'center', default_background: 1b}
