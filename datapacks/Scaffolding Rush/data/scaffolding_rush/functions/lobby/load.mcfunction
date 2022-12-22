kill @e[tag=baseTeam]
execute as @e[type=villager,tag=LobbyBase] run function scaffolding_rush:clean_kill

execute unless entity @e[type=minecraft:area_effect_cloud,tag=lobbyText,name="Start Game"] run summon area_effect_cloud 0 25 6 {CustomName: '{"text":"Start Game","bold":true}', Tags: ["lobbyText"], CustomNameVisible: 1, Age: -2147483648, Duration: -1, WaitTime: -2147483648}
execute unless entity @e[type=minecraft:area_effect_cloud,tag=lobbyText,name="Options"] run summon area_effect_cloud -2 24.5 6 {CustomName: '{"text":"Options", "color":"gray"}', Tags: ["lobbyText"], CustomNameVisible: 1, Age: -2147483648, Duration: -1, WaitTime: -2147483648}
execute unless entity @e[type=minecraft:area_effect_cloud,tag=lobbyText,name="How to play"] run summon area_effect_cloud 4 24.7 -2 {CustomName: '{"text":"How to play","bold":true,"color":"light_purple"}', Tags: ["lobbyText"], CustomNameVisible: 1, Age: -2147483648, Duration: -1, WaitTime: -2147483648}

schedule function scaffolding_rush:lobby/load_build 5t
