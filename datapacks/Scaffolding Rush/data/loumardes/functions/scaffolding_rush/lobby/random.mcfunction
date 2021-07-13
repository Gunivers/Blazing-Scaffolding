function loumardes:scaffolding_rush/team/join/killbase
kill @e[type=minecraft:area_effect_cloud,tag=lobbyText]
team leave @a

setblock 0 2 0 minecraft:structure_block[mode=load]{mode:"LOAD",posX:-20,posY:0,posZ:-14,name:"loumardes:scaffolding_rush/lobby_random"}
setblock 0 3 0 minecraft:redstone_block

summon area_effect_cloud -4.0 4 2.0 {CustomName:'{"text":"Spectate","bold":true,"color":"gray"}',Tags:["lobbyText"],CustomNameVisible: 1,Age: -2147483648, Duration: -1, WaitTime: -2147483648}
summon area_effect_cloud 5.0 4 2.0 {CustomName:'{"text":"Join Game","color":"dark_purple"}',Tags:["lobbyText"],CustomNameVisible: 1,Age: -2147483648, Duration: -1, WaitTime: -2147483648}
