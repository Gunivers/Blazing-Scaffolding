
scoreboard players set #lobby.active data 1

kill @e[tag=baseTeam]
execute as @e[type=villager,tag=LobbyBase] run function utils:clean_kill
kill @e[type=!villager,tag=lobbyTeam]
function scaffolding_rush:lobby/base_egg/clear_egg

kill @e[tag=lobbyText]
kill @e[tag=lobbyInteraction]
kill @e[tag=lobbyMarker]
execute as @e[type=villager,tag=lobbyVillager] run function utils:clean_kill


# Preset option
setblock -2 24 6 minecraft:smooth_quartz_slab
summon minecraft:villager -2 24.5 6 {VillagerData: {profession: "minecraft:none", level: 1, type: "minecraft:plains"}, NoAI: 1b, PersistenceRequired: 1b, NoGravity: 1b, CanPickUpLoot: 0b, Silent: 1, Invulnerable: 1, Age: 0, Rotation: [180f, 0f], Tags: ["LobbyPresetVillager", "lobbyVillager"], Offers: {}, CustomName: '["",{"keybind":"key.use","color":"gold"},{"text":" to change the preset","color":"gold"}]'}

summon minecraft:interaction -2 24 6 {height: 3, width: 0.9d, Tags: ["lobbyInteraction", "LobbyPresetVillager"]}
summon minecraft:interaction -1.25 25.15 6.2 {height: 0.5d, width: 0.5d, Tags: ["lobbyInteraction", "LobbyPresetVillagerPrevious"]}
summon minecraft:interaction -1.75 25.15 6.2 {height: 0.5d, width: 0.5d, Tags: ["lobbyInteraction", "LobbyPresetVillagerNext"]}
summon minecraft:text_display -2 25.6 5.9 {text: '{"text":"Preset :","color":"white", "underlined": true}', Tags: ["lobbyText"], billboard: 'fixed', transformation: {translation:[0f,0f,0f],left_rotation:[0f,1f,0f,0f],scale:[0.6f,0.6f,0.6f],right_rotation:[0f,0f,0f,1f]}, brightness: {block: 10, sky: 10}}
summon minecraft:text_display -2 25.0 5.9 {text: '', Tags: ["lobbyText", "presetLabel"], billboard: 'vertical'}
summon minecraft:text_display -1.75 25.25 5.95 {text: '{"text":">>","bold":true,"color":"#7027FF"}', Tags: ["lobbyText", "LobbyPresetVillagerNext"], billboard: 'fixed', transformation: [-1f, 0f, 0f, 0f, 0f, 1f, 0f, 0f, 0f, 0f, -1f, 0f, 0f, 0f, 0f, 1f], background: 0, shadow: 1b, brightness: {block: 10, sky: 10}}
summon minecraft:text_display -1.22 25.25 5.95 {text: '{"text":"<<","bold":true,"color":"#7027FF"}', Tags: ["lobbyText", "LobbyPresetVillagerPrevious"], billboard: 'fixed', transformation: [-1f, 0f, 0f, 0f, 0f, 1f, 0f, 0f, 0f, 0f, -1f, 0f, 0f, 0f, 0f, 1f], background: 0, shadow: 1b, brightness: {block: 10, sky: 10}}

function scaffolding_rush:lobby/text/team/summon

setblock -4 24 8 minecraft:ender_chest
summon minecraft:text_display -4 25.2 8 {text: '{"text":"Options", "color":"gray"}', Tags: ["lobbyText"], billboard: 'center', brightness: {block: 10, sky: 10}}
# How to play
# summon minecraft:text_display 4 25.5 -2 {text: '{"text":"How to play","bold":true,"color":"light_purple"}', Tags: ["lobbyText"], billboard: 'center', brightness: {block: 10, sky: 10}}
# summon minecraft:interaction 4 24 -2 {height: 1.2d, width: 1.2d, Tags: ["lobbyInteraction", "LobbyHTP"]}

scoreboard players reset @a bellring
setblock 0 25 6 bell[attachment=floor,facing=south]
summon minecraft:text_display 0 24.6 5.9 {text: '{"text":"Start Game","bold":true}', transformation: [-1f, 0f, 0f, 0f, 0f, 1f, 0f, 0f, 0f, 0f, -1f, 0f, 0f, 0f, 0f, 1f], Tags: ["lobbyText", "startLabel"], billboard: 'fixed', brightness: {block: 10, sky: 10}}
summon minecraft:marker 0 24.13 6 {Tags: ["lobbyMarker", "lobbyStartParticle"]}

summon minecraft:text_display -5.0 27 -2.99 {text: '["",{"text":"Credits","underlined":true,"color":"gold","bold":true},{"text":"\\n"},{"text":"Leirof\\nLoumardes\\nTheaustudio\\nLaizo\\nascpial\\nTretinV3\\nKali\\n","color":"#e5e5e5"},{"text":"and many others...\\nthanks!","color":"gold"}]', Tags: ["lobbyText"], billboard: 'fixed', background: 0, brightness: {block: 10, sky: 10}}
summon minecraft:text_display -5.0 26.4 -2.99 {text: '["",{"text":"Join us on Discord!","color":"white"}]', Tags: ["lobbyText"], billboard: 'fixed', background: -10983950, brightness: {block: 10, sky: 10}}
summon minecraft:text_display -5.0 26.1 -2.99 {text: '["",{"text":"gunivers.net","color":"gold"}]', Tags: ["lobbyText"], billboard: 'fixed', background: 0, brightness: {block: 10, sky: 10}}
summon minecraft:interaction -5.0 25.5 -3.5 {height: 4d, width: 1.9d, Tags: ["lobbyInteraction", "LobbyCredits"]}


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

execute as @a[team=blue] run function scaffolding_rush:lobby/refresh_items
execute as @a[team=green] run function scaffolding_rush:lobby/refresh_items
execute as @a[team=red] run function scaffolding_rush:lobby/refresh_items
execute as @a[team=yellow] run function scaffolding_rush:lobby/refresh_items

function scaffolding_rush:lobby/text/scaff

function scaffolding_rush:lobby/text/refresh
function scaffolding_rush:lobby/preset_villager/refresh

# Load tutorial world
function scaffolding_rush:tutorial/forceload
scoreboard players enable @a[tag=!inTutorial] trigger.tuto
