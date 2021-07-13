kill @e[type=minecraft:area_effect_cloud,tag=lobbyText]
setblock 0 2 0 minecraft:structure_block[mode=load]{mode:"LOAD",posX:-20,posY:0,posZ:-14,name:"loumardes:scaffolding_rush/lobby"}
setblock 0 3 0 minecraft:redstone_block

fill -2 3 -2 -3 3 -3 minecraft:light_gray_concrete_powder
fill -4 3 2 -5 3 1 minecraft:blue_concrete_powder
fill -3 3 6 -4 3 5 minecraft:red_concrete_powder
fill 3 3 5 4 3 6 minecraft:lime_concrete_powder
fill 4 3 1 5 3 2 minecraft:yellow_concrete_powder
summon area_effect_cloud -4.0 4 2.0 {CustomName:'{"text":"Join Blue","color":"blue"}',Tags:["lobbyText"],CustomNameVisible: 1,Age: -2147483648, Duration: -1, WaitTime: -2147483648}
summon area_effect_cloud 5.0 4 2.0 {CustomName:'{"text":"Join Yellow","color":"yellow"}',Tags:["lobbyText"],CustomNameVisible: 1,Age: -2147483648, Duration: -1, WaitTime: -2147483648}
summon area_effect_cloud 4.0 4 6.0 {CustomName:'{"text":"Join Green","color":"green"}',Tags:["lobbyText"],CustomNameVisible: 1,Age: -2147483648, Duration: -1, WaitTime: -2147483648}
summon area_effect_cloud -3.0 4 6.0 {CustomName:'{"text":"Join Red","color":"red"}',Tags:["lobbyText"],CustomNameVisible: 1,Age: -2147483648, Duration: -1, WaitTime: -2147483648}
summon area_effect_cloud -2.0 4 -2.0 {CustomName:'{"text":"Spectate","bold":true,"color":"gray"}',Tags:["lobbyText"],CustomNameVisible: 1,Age: -2147483648, Duration: -1, WaitTime: -2147483648}
