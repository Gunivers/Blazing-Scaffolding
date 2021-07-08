setblock 0 2 0 minecraft:structure_block[mode=load]{mode:"LOAD",posX:-14,posY:0,posZ:-7,sizeX:32,sizeY:17,sizeZ:29,name:"loumardes:scaffolding_rush/lobby"}
setblock 0 3 0 minecraft:redstone_block

summon area_effect_cloud -4.0 4 1.0 {CustomName:'{"text":"Join Blue","color":"blue"}',Tags:["lobbyText"],CustomNameVisible: 1,Age: -2147483648, Duration: -1, WaitTime: -2147483648}
summon area_effect_cloud 5.0 4 2.0 {CustomName:'{"text":"Join Yellow","color":"yellow"}',Tags:["lobbyText"],CustomNameVisible: 1,Age: -2147483648, Duration: -1, WaitTime: -2147483648}
summon area_effect_cloud 4.0 4 6.0 {CustomName:'{"text":"Join Green","color":"green"}',Tags:["lobbyText"],CustomNameVisible: 1,Age: -2147483648, Duration: -1, WaitTime: -2147483648}
summon area_effect_cloud -3.0 4 5.0 {CustomName:'{"text":"Join Red","color":"red"}',Tags:["lobbyText"],CustomNameVisible: 1,Age: -2147483648, Duration: -1, WaitTime: -2147483648}
summon area_effect_cloud -2.0 4 -2.0 {CustomName:'{"text":"Spectate","bold":true,"color":"gray"}',Tags:["lobbyText"],CustomNameVisible: 1,Age: -2147483648, Duration: -1, WaitTime: -2147483648}

summon area_effect_cloud 0 5 7 {CustomName:'{"text":"Start Game","bold":true}',Tags:["lobbyText"],CustomNameVisible: 1,Age: -2147483648, Duration: -1, WaitTime: -2147483648}
summon area_effect_cloud 2 4.7 11 {CustomName:'{"text":"How to play","bold":true,"color":"light_purple"}',Tags:["lobbyText"],CustomNameVisible: 1,Age: -2147483648, Duration: -1, WaitTime: -2147483648}


scoreboard players set GameLobby global 1
scoreboard players set TeamBaseEgg global 1

give @a minecraft:scaffolding
give @a minecraft:gravel{CanPlaceOn:["minecraft:scaffolding"]}
function loumardes:scaffolding_rush/lobby/give_book
