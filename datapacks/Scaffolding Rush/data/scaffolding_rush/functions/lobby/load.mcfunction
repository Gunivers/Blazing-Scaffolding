kill @e[tag=baseTeam]
execute as @e[type=villager,tag=LobbyBase] run function scaffolding_rush:clean_kill

execute unless entity @e[type=minecraft:area_effect_cloud,tag=lobbyText,name="Start Game"] run summon area_effect_cloud 0 5 7 {CustomName: '{"text":"Start Game","bold":true}', Tags: ["lobbyText"], CustomNameVisible: 1, Age: -2147483648, Duration: -1, WaitTime: -2147483648}
execute unless entity @e[type=minecraft:area_effect_cloud,tag=lobbyText,name="How to play"] run summon area_effect_cloud 2 4.7 11 {CustomName: '{"text":"How to play","bold":true,"color":"light_purple"}', Tags: ["lobbyText"], CustomNameVisible: 1, Age: -2147483648, Duration: -1, WaitTime: -2147483648}
summon villager 0 0 0 {Invulnerable: 1, Silent: 1, NoAI: 1, ActiveEffects: [{Id: 14, Amplifier: 0, Duration: 999999, ShowParticles: 0b}], Tags: ["LobbyBase"]}

setblock 0 1 0 minecraft:structure_block[mode=load]{mode: "LOAD", posX: -20, posY: 0, posZ: -13, name: "scaffolding_rush:lobby"}
schedule function scaffolding_rush:lobby/load_build 5t
