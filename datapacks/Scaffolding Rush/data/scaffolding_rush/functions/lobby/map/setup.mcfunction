# Executed globally

setblock -4 24 8 minecraft:ender_chest
setblock 0 25 6 bell[attachment=floor,facing=south]

scoreboard players set #lobby.active data 1
scoreboard players reset @a bellring

kill @e[tag=baseTeam]
kill @e[type=!villager,tag=lobbyTeam]
execute as @e[type=villager] run function utils:clean_kill

kill @e[tag=lobbyText]
kill @e[tag=lobbyInteraction]
kill @e[tag=lobbyMarker]

summon text_display 3.75 27.7 10.99 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[4f,4f,1f]},text:'{"text":"Blazing","color":"gold","bold":true}',background:16711680,Tags:["lobbyText","lobbyTitle"]}
summon text_display 1.75 26.5 10.99 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[4f,4f,1f]},text:'{"text":"Scaffolding","color":"gold","bold":true}',background:16711680,Tags:["lobbyText","lobbyTitle"]}
summon text_display 2.5 26.2 10.99 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},text:'{"translate":"blazing_scaffolding.from_gunivers","color":"white","bold":true}',background:16711680,Tags:["lobbyText","lobbyTitle"]}

execute as @e[tag=lobbyTitle] at @s run tp @s ~ ~ ~ 180 0

# Preset option
setblock -2 24 6 minecraft:smooth_quartz_slab
summon minecraft:villager -2 24.5 6 {VillagerData: {profession: "minecraft:none", level: 1, type: "minecraft:plains"}, NoAI: 1b, PersistenceRequired: 1b, NoGravity: 1b, CanPickUpLoot: 0b, Silent: 1, Invulnerable: 1, Age: 0, Rotation: [180f, 0f], Tags: ["LobbyPresetVillager", "lobbyVillager"], Offers: {}, CustomName: '["",{"keybind":"key.use","color":"gold"},{"text":" to change the preset","color":"gold"}]'}

summon minecraft:interaction -2 24 6 {height: 3, width: 0.9f, Tags: ["lobbyInteraction", "LobbyPresetVillager"]}
summon minecraft:interaction -1.25 25.15 6.2 {height: 0.5f, width: 0.5f, Tags: ["lobbyInteraction", "LobbyPresetVillagerPrevious"]}
summon minecraft:interaction -1.75 25.15 6.2 {height: 0.5f, width: 0.5f, Tags: ["lobbyInteraction", "LobbyPresetVillagerNext"]}
summon minecraft:text_display -2 25.6 5.9 {text: '{"translate":"blazing_scaffolding.preset","color":"white", "underlined": true}', Tags: ["lobbyText"], billboard: 'fixed', transformation: {translation:[0f,0f,0f],left_rotation:[0f,1f,0f,0f],scale:[0.6f,0.6f,0.6f],right_rotation:[0f,0f,0f,1f]}, brightness: {block: 10, sky: 10}}
summon minecraft:text_display -2 25.0 5.9 {text: '', Tags: ["lobbyText", "presetLabel"], billboard: 'vertical'}
summon minecraft:text_display -1.75 25.25 5.95 {text: '{"text":">>","bold":true,"color":"#7027FF"}', Tags: ["lobbyText", "LobbyPresetVillagerNext"], billboard: 'fixed', transformation: [-1f, 0f, 0f, 0f, 0f, 1f, 0f, 0f, 0f, 0f, -1f, 0f, 0f, 0f, 0f, 1f], background: 0, shadow: 1b, brightness: {block: 10, sky: 10}}
summon minecraft:text_display -1.22 25.25 5.95 {text: '{"text":"<<","bold":true,"color":"#7027FF"}', Tags: ["lobbyText", "LobbyPresetVillagerPrevious"], billboard: 'fixed', transformation: [-1f, 0f, 0f, 0f, 0f, 1f, 0f, 0f, 0f, 0f, -1f, 0f, 0f, 0f, 0f, 1f], background: 0, shadow: 1b, brightness: {block: 10, sky: 10}}

# Teams options
summon minecraft:text_display 6 25.6 6 {text: '{"translate":"blazing_scaffolding.teams","bold":true,"color":"gold"}', Tags: ["lobbyText"], billboard: 'fixed', transformation: {translation: [0f, 0f, 0f], left_rotation: [0f, 0.907f, 0f, -0.421f], scale: [1f, 1f, 1f], right_rotation: [0f, 0f, 0f, 1f]}, background: 0, shadow: 1b, brightness: {block: 10, sky: 10}}
summon minecraft:text_display 6 25.8 6 {text: '', Tags: ["lobbyText", "teamNumberLabel"], billboard: 'fixed', transformation: {translation: [0f, 0f, 0f], left_rotation: [0f, 0.907f, 0f, -0.421f], scale: [2f, 2f, 2f], right_rotation: [0f, 0f, 0f, 1f]}, background: 0, shadow: 1b, interpolation_duration: 20, brightness: {block: 10, sky: 10}}
summon minecraft:text_display 6.6 25.2 6.4 {text: '{"text":"+"}', Tags: ["lobbyText", "teamNumberActionsLabel", "LobbyTeamMinus"], billboard: 'fixed', transformation: {translation: [0f, 0f, 0f], left_rotation: [0f, 0.907f, 0f, -0.421f], scale: [1f, 1f, 1f], right_rotation: [0f, 0f, 0f, 1f]}, background: 0, shadow: 1b, brightness: {block: 10, sky: 10}}
summon minecraft:text_display 6.4 25.2 6.6 {text: '{"text":"-"}', Tags: ["lobbyText", "teamNumberActionsLabel", "LobbyTeamPlus"], billboard: 'fixed', transformation: {translation: [0f, 0f, 0f], left_rotation: [0f, 0.907f, 0f, -0.421f], scale: [1f, 1f, 1f], right_rotation: [0f, 0f, 0f, 1f]}, background: 0, shadow: 1b, brightness: {block: 10, sky: 10}}
summon minecraft:interaction 6.6 25.26 6.4 {height: 0.2f, width: 0.2f, Tags: ["lobbyInteraction", "LobbyTeamMinus"]}
summon minecraft:interaction 6.4 25.26 6.6 {height: 0.2f, width: 0.2f, Tags: ["lobbyInteraction", "LobbyTeamPlus"]}
summon minecraft:text_display 6 24.8 6 {text: '', Tags: ["lobbyText", "LobbyTeamRandom"], billboard: 'fixed', transformation: {translation: [0f, 0f, 0f], left_rotation: [0f, 0.907f, 0f, -0.421f], scale: [0.7f, 0.7f, 0.7f], right_rotation: [0f, 0f, 0f, 1f]}, background: 0, shadow: 1b, brightness: {block: 10, sky: 10}}
summon minecraft:interaction 6 24.8 6 {height: 0.2f, width: 0.5f, Tags: ["lobbyInteraction", "LobbyTeamRandom"], transformation: {translation: [0f, 0f, 0f], left_rotation: [0f, 0.907f, 0f, -0.421f], scale: [1f, 1f, 1f], right_rotation: [0f, 0f, 0f, 1f]}}

# Teams, presets, interactions
function scaffolding_rush:lobby/map/refresh

# Start, options & credits
summon minecraft:text_display 0 24.6 5.9 {text: '{"text":"Start Game","bold":true}', transformation: [-1f, 0f, 0f, 0f, 0f, 1f, 0f, 0f, 0f, 0f, -1f, 0f, 0f, 0f, 0f, 1f], Tags: ["lobbyText", "startLabel"], billboard: 'fixed', brightness: {block: 10, sky: 10}}
summon minecraft:marker 0 24.13 6 {Tags: ["lobbyMarker", "lobbyStartParticle"]}
summon minecraft:text_display -4 25.2 8 {text: '{"translate":"blazing_scaffolding.options", "color":"gray"}', Tags: ["lobbyText"], billboard: 'center', brightness: {block: 10, sky: 10}}
summon minecraft:text_display -5.0 27 -2.99 {text: '["",{"translate":"blazing_scaffolding.credits","underlined":true,"color":"gold","bold":true},{"text":"\\n"},{"text":"Leirof\\nLoumardes\\nTheaustudio\\nLaizo\\nascpial\\nTretinV3\\nKali\\nMrBurdy\\n","color":"#e5e5e5"},{"translate":"blazing_scaffolding.and_many_other","color":"gold"}]', Tags: ["lobbyText"], billboard: 'fixed', background: 0, brightness: {block: 10, sky: 10}}
summon minecraft:text_display -5.0 26.4 -2.99 {text: '["",{"translate":"blazing_scaffolding.join_discord","color":"white"}]', Tags: ["lobbyText"], billboard: 'fixed', background: -10983950, brightness: {block: 10, sky: 10}}
summon minecraft:text_display -5.0 26.1 -2.99 {text: '["",{"text":"gunivers.net","color":"gold"}]', Tags: ["lobbyText"], billboard: 'fixed', background: 0, brightness: {block: 10, sky: 10}}
summon minecraft:interaction -5.0 25.5 -3.5 {height: 4f, width: 1.9f, Tags: ["lobbyInteraction", "LobbyCredits"]}

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

function scaffolding_rush:lobby/text/scaff

function scaffolding_rush:lobby/animation/magma
teleport @e[type=block_display,tag=lobbyMagma1] 1 26.0 10.5
teleport @e[type=block_display,tag=lobbyMagma2] -2.5 30.0 10.5
teleport @e[type=block_display,tag=lobbyMagma3] -4.0 29.0 10.0

