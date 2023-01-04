
scoreboard players set GameLobby global 1

kill @e[tag=baseTeam]
execute as @e[type=villager,tag=LobbyBase] run function scaffolding_rush:clean_kill
kill @e[tag=lobbyTeam]
function scaffolding_rush:lobby/base_egg/clear_egg

execute unless entity @e[type=minecraft:area_effect_cloud,tag=lobbyText,name="Start Game"] run summon area_effect_cloud 0 25 6 {CustomName: '{"text":"Start Game","bold":true}', Tags: ["lobbyText"], CustomNameVisible: 1, Age: -2147483648, Duration: -1, WaitTime: -2147483648}
execute unless entity @e[type=minecraft:area_effect_cloud,tag=lobbyText,name="Options"] run summon area_effect_cloud -2 24.5 6 {CustomName: '{"text":"Options", "color":"gray"}', Tags: ["lobbyText"], CustomNameVisible: 1, Age: -2147483648, Duration: -1, WaitTime: -2147483648}
execute unless entity @e[type=minecraft:area_effect_cloud,tag=lobbyText,name="How to play"] run summon area_effect_cloud 4 24.7 -2 {CustomName: '{"text":"How to play","bold":true,"color":"light_purple"}', Tags: ["lobbyText"], CustomNameVisible: 1, Age: -2147483648, Duration: -1, WaitTime: -2147483648}

execute if score RandomTeam options matches 0 run function scaffolding_rush:lobby/team
execute if score RandomTeam options matches 1 run function scaffolding_rush:lobby/random

execute as @a if score TeamEgg options matches 1 run function scaffolding_rush:lobby/base_egg/reset

kill @e[type=marker,tag=lobbyLight]
summon minecraft:marker 0 24 0 {Tags: ["lobbyLight"]}
execute as @e[type=marker,tag=lobbyLight] unless score @s lightLevel matches 0..15 run scoreboard players set @s lightLevel 4
summon minecraft:marker 0 26 6 {Tags: ["lobbyLight"]}
summon minecraft:marker 0 25 7 {Tags: ["lobbyLight"]}
execute as @e[type=marker,tag=lobbyLight] unless score @s lightLevel matches 0..15 run scoreboard players set @s lightLevel 15
summon minecraft:marker -2 25 6 {Tags: ["lobbyLight"]}
summon minecraft:marker 2 24 6 {Tags: ["lobbyLight"]}
summon minecraft:marker 4 24 6 {Tags: ["lobbyLight"]}
summon minecraft:marker 6 24 4 {Tags: ["lobbyLight"]}
summon minecraft:marker 6 24 2 {Tags: ["lobbyLight"]}
summon minecraft:marker 4 25 -2 {Tags: ["lobbyLight"]}
execute as @e[type=marker,tag=lobbyLight] unless score @s lightLevel matches 0..15 run scoreboard players set @s lightLevel 10

execute as @a[team=blue] run function scaffolding_rush:lobby/give_items
execute as @a[team=green] run function scaffolding_rush:lobby/give_items
execute as @a[team=red] run function scaffolding_rush:lobby/give_items
execute as @a[team=yellow] run function scaffolding_rush:lobby/give_items
