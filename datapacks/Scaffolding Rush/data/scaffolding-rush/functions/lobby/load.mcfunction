execute unless entity @e[type=minecraft:area_effect_cloud,tag=lobbyText,name="Start Game"] run summon area_effect_cloud 0 5 7 {CustomName:'{"text":"Start Game","bold":true}',Tags:["lobbyText"],CustomNameVisible: 1,Age: -2147483648, Duration: -1, WaitTime: -2147483648}
execute unless entity @e[type=minecraft:area_effect_cloud,tag=lobbyText,name="How to play"] run summon area_effect_cloud 2 4.7 11 {CustomName:'{"text":"How to play","bold":true,"color":"light_purple"}',Tags:["lobbyText"],CustomNameVisible: 1,Age: -2147483648, Duration: -1, WaitTime: -2147483648}

setblock 0 2 0 minecraft:structure_block[mode=load]{mode:"LOAD",posX:-20,posY:0,posZ:-14,name:"scaffolding_rush:lobby"}
setblock 0 3 0 minecraft:redstone_block

scoreboard players set GameLobby global 1

execute if score RandomTeam options matches 0 run function scaffolding_rush:lobby/team
execute if score RandomTeam options matches 1 run function scaffolding_rush:lobby/random
