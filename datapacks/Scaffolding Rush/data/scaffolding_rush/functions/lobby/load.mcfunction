
scoreboard players set GameLobby global 1

kill @e[tag=baseTeam]
execute as @e[type=villager,tag=LobbyBase] run function scaffolding_rush:clean_kill
kill @e[tag=lobbyTeam]
function scaffolding_rush:lobby/base_egg/clear_egg

kill @e[tag=lobbyText]
kill @e[tag=lobbyInteraction]
execute as @e[type=villager,tag=lobbyVillager] run function scaffolding_rush:clean_kill


# Preset option
setblock -2 24 6 minecraft:smooth_quartz_slab
summon minecraft:villager -2 24.5 6 {VillagerData: {profession: "minecraft:none", level: 1, type: "minecraft:plains"}, NoAI: 1b, PersistenceRequired: 1b, NoGravity: 1b, CanPickUpLoot: 0b, Silent: 1, Invulnerable: 1, Age: 0, Rotation: [180f, 0f], Tags: ["LobbyPresetVillager", "lobbyVillager"], Offers: {}, CustomName: '["",{"keybind":"key.use","color":"gold"},{"text":" to change the preset","color":"gold"}]'}

summon minecraft:interaction -2 24 6 {height: 3, width: 0.9d, Tags: ["lobbyInteraction", "LobbyPresetVillager"]}
summon minecraft:interaction -1.25 24.0 6.2 {height: 0.5d, width: 0.5d, Tags: ["lobbyInteraction", "LobbyPresetVillagerPrevious"]}
summon minecraft:interaction -1.75 24.0 6.2 {height: 0.5d, width: 0.5d, Tags: ["lobbyInteraction", "LobbyPresetVillagerNext"]}
summon minecraft:text_display -2 25.3 5.9 {text: '{"text":"Preset :","color":"white", "underlined": true}', Tags: ["lobbyText"], billboard: 'vertical'}
summon minecraft:text_display -2 25.0 5.9 {text: '', Tags: ["lobbyText", "presetLabel"], billboard: 'vertical'}
summon minecraft:text_display -1.75 24.1 5.95 {text: '{"text":">>","bold":true,"color":"#7027FF"}', Tags: ["lobbyText"], billboard: 'fixed', transformation: [-1f, 0f, 0f, 0f, 0f, 1f, 0f, 0f, 0f, 0f, -1f, 0f, 0f, 0f, 0f, 1f], background: 0, shadow: 1b}
summon minecraft:text_display -1.22 24.1 5.95 {text: '{"text":"<<","bold":true,"color":"#7027FF"}', Tags: ["lobbyText"], billboard: 'fixed', transformation: [-1f, 0f, 0f, 0f, 0f, 1f, 0f, 0f, 0f, 0f, -1f, 0f, 0f, 0f, 0f, 1f], background: 0, shadow: 1b}

# Teams options
summon minecraft:text_display 6 26.0 6 {text: '{"text":"Teams","bold":true,"color":"white"}', Tags: ["lobbyText"], billboard: 'fixed', transformation: {translation: [0f, 0f, 0f], left_rotation: [0f, 0.907f, 0f, -0.421f], scale: [1f, 1f, 1f], right_rotation: [0f, 0f, 0f, 1f]}, background: 0, shadow: 1b}
summon minecraft:text_display 6 25.5 6 {text: '', Tags: ["lobbyText", "teamNumberLabel"], billboard: 'fixed', transformation: {translation: [0f, 0f, 0f], left_rotation: [0f, 0.907f, 0f, -0.421f], scale: [2f, 2f, 2f], right_rotation: [0f, 0f, 0f, 1f]}, background: 0, shadow: 1b, interpolation_duration: 20}
summon minecraft:text_display 6 25.2 6 {text: '', Tags: ["lobbyText", "teamNumberActionsLabel"], billboard: 'fixed', transformation: {translation: [0f, 0f, 0f], left_rotation: [0f, 0.907f, 0f, -0.421f], scale: [1f, 1f, 1f], right_rotation: [0f, 0f, 0f, 1f]}, background: 0, shadow: 1b}
summon minecraft:interaction 6.6 25.26 6.4 {height: 0.2d, width: 0.2d, Tags: ["lobbyInteraction", "LobbyTeamMinus"]}
summon minecraft:interaction 6.4 25.26 6.6 {height: 0.2d, width: 0.2d, Tags: ["lobbyInteraction", "LobbyTeamPlus"]}

# team random
summon minecraft:text_display 6 24.8 6 {text: '', Tags: ["lobbyText", "lobbyRandomLabel"], billboard: 'fixed', transformation: {translation: [0f, 0f, 0f], left_rotation: [0f, 0.907f, 0f, -0.421f], scale: [0.7f, 0.7f, 0.7f], right_rotation: [0f, 0f, 0f, 1f]}, background: 0, shadow: 1b}
summon minecraft:interaction 6 24.8 6 {height: 0.2d, width: 0.5d, Tags: ["lobbyInteraction", "LobbyTeamRandom"], transformation: {translation: [0f, 0f, 0f], left_rotation: [0f, 0.907f, 0f, -0.421f], scale: [1f, 1f, 1f], right_rotation: [0f, 0f, 0f, 1f]}}


function scaffolding_rush:lobby/text/team/refresh

summon minecraft:text_display -4 24.5 8 {text: '{"text":"Options", "color":"gray"}', Tags: ["lobbyText"], billboard: 'center'}
summon minecraft:text_display 4 24.7 -2 {text: '{"text":"How to play","bold":true,"color":"light_purple"}', Tags: ["lobbyText"], billboard: 'center'}

scoreboard players reset @a bellring
setblock 0 25 6 bell[attachment=floor,facing=south]
summon minecraft:text_display 0 26.0 6 {text: '{"text":"Start Game","bold":true}', Tags: ["lobbyText", "startLabel"], billboard: 'center'}


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

function scaffolding_rush:lobby/text/refresh
function scaffolding_rush:lobby/preset_villager/refresh
