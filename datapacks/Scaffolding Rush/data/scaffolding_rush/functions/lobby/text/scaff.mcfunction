
summon minecraft:text_display 3 28.3 10.9 {text: '[{"text":""},{"text":"B","bold":true,"color":"#f5a728"},{"text":"l","bold":true,"color":"#f49b25"},{"text":"a","bold":true,"color":"#f49022"},{"text":"z","bold":true,"color":"#f4851f"},{"text":"i","bold":true,"color":"#f37a1c"},{"text":"n","bold":true,"color":"#f36f19"},{"text":"g","bold":true,"color":"#f36416"}]', Tags: ["lobbyText", "teamNumberLabel"], billboard: 'fixed', transformation: {translation:[0f,0f,0f],left_rotation:[0f,1f,0f,0f],scale:[5f,5f,5f],right_rotation:[0f,0f,0f,1f]}, background: 0, shadow: 1b, brightness: {block: 15, sky: 15}}
summon minecraft:text_display 1.0 27.1 10.9 {text: '[{"text":""},{"text":"S","bold":true,"color":"#f5a728"},{"text":"c","bold":true,"color":"#f49b26"},{"text":"a","bold":true,"color":"#f49024"},{"text":"f","bold":true,"color":"#f48522"},{"text":"f","bold":true,"color":"#f47a20"},{"text":"o","bold":true,"color":"#f46f1f"},{"text":"l","bold":true,"color":"#f3631d"},{"text":"d","bold":true,"color":"#f3581b"},{"text":"i","bold":true,"color":"#f34d19"},{"text":"n","bold":true,"color":"#f34217"},{"text":"g","bold":true,"color":"#f33716"}]', Tags: ["lobbyText", "teamNumberLabel"], billboard: 'fixed', transformation: {translation:[0f,0f,0f],left_rotation:[0f,1f,0f,0f],scale:[5f,5f,5f],right_rotation:[0f,0f,0f,1f]}, background: 0, shadow: 1b, brightness: {block: 15, sky: 15}}

summon minecraft:text_display -0.5 26.9 10.9 {text: '[{"text":"by the ", "color": "gray"},{"text": "Gunivers community", "color": "gold"}]', Tags: ["lobbyText", "teamNumberLabel"], billboard: 'fixed', transformation: {translation:[0f,0f,0f],left_rotation:[0f,1f,0f,0f],scale:[1.5f,1.5f,1.5f],right_rotation:[0f,0f,0f,1f]}, background: 0, shadow: 1b, brightness: {block: 15, sky: 15}}


function scaffolding_rush:lobby/animation/magma
teleport @e[type=block_display,tag=lobbyMagma1] 1 26.0 10.5
teleport @e[type=block_display,tag=lobbyMagma2] -2.5 30.0 10.5
teleport @e[type=block_display,tag=lobbyMagma3] -4.0 29.0 10.0
