
# Teams options
summon minecraft:text_display 6 25.6 6 {text: '{"text":"Teams","bold":true,"color":"white"}', Tags: ["lobbyText"], billboard: 'fixed', transformation: {translation: [0f, 0f, 0f], left_rotation: [0f, 0.907f, 0f, -0.421f], scale: [1f, 1f, 1f], right_rotation: [0f, 0f, 0f, 1f]}, background: 0, shadow: 1b}
summon minecraft:text_display 6 25.8 6 {text: '', Tags: ["lobbyText", "teamNumberLabel"], billboard: 'fixed', transformation: {translation: [0f, 0f, 0f], left_rotation: [0f, 0.907f, 0f, -0.421f], scale: [2f, 2f, 2f], right_rotation: [0f, 0f, 0f, 1f]}, background: 0, shadow: 1b, interpolation_duration: 20}
summon minecraft:text_display 6 25.2 6 {text: '', Tags: ["lobbyText", "teamNumberActionsLabel"], billboard: 'fixed', transformation: {translation: [0f, 0f, 0f], left_rotation: [0f, 0.907f, 0f, -0.421f], scale: [1f, 1f, 1f], right_rotation: [0f, 0f, 0f, 1f]}, background: 0, shadow: 1b}
summon minecraft:interaction 6.6 25.26 6.4 {height: 0.2d, width: 0.2d, Tags: ["lobbyInteraction", "LobbyTeamMinus"]}
summon minecraft:interaction 6.4 25.26 6.6 {height: 0.2d, width: 0.2d, Tags: ["lobbyInteraction", "LobbyTeamPlus"]}

# team random
summon minecraft:text_display 6 24.8 6 {text: '', Tags: ["lobbyText", "lobbyRandomLabel"], billboard: 'fixed', transformation: {translation: [0f, 0f, 0f], left_rotation: [0f, 0.907f, 0f, -0.421f], scale: [0.7f, 0.7f, 0.7f], right_rotation: [0f, 0f, 0f, 1f]}, background: 0, shadow: 1b}
summon minecraft:interaction 6 24.8 6 {height: 0.2d, width: 0.5d, Tags: ["lobbyInteraction", "LobbyTeamRandom"], transformation: {translation: [0f, 0f, 0f], left_rotation: [0f, 0.907f, 0f, -0.421f], scale: [1f, 1f, 1f], right_rotation: [0f, 0f, 0f, 1f]}}

execute as @e[type=villager,tag=lobbyTeam] run function scaffolding_rush:clean_kill
function scaffolding_rush:lobby/text/team/refresh
