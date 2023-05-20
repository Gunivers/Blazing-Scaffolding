
execute if score TeamNumber options matches 2 run data merge entity @e[type=minecraft:text_display,tag=teamNumberLabel,limit=1] {text: '{"text":"2","bold":true,"color":"white"}'}
execute if score TeamNumber options matches 3 run data merge entity @e[type=minecraft:text_display,tag=teamNumberLabel,limit=1] {text: '{"text":"3","bold":true,"color":"white"}'}
execute if score TeamNumber options matches 4 run data merge entity @e[type=minecraft:text_display,tag=teamNumberLabel,limit=1] {text: '{"text":"4","bold":true,"color":"white"}'}

execute if score TeamNumber options matches 2 run data modify entity @e[type=minecraft:text_display,tag=teamNumberActionsLabel,limit=1] text set value '["",{"text":"-","color":"gray"},{"text":" +","color":"gold"}]'
execute if score TeamNumber options matches 3 run data modify entity @e[type=minecraft:text_display,tag=teamNumberActionsLabel,limit=1] text set value '["",{"text":"-","color":"gold"},{"text":" +","color":"gold"}]'
execute if score TeamNumber options matches 4 run data modify entity @e[type=minecraft:text_display,tag=teamNumberActionsLabel,limit=1] text set value '["",{"text":"-","color":"gold"},{"text":" +","color":"gray"}]'



kill @e[tag=lobbyTeam]
execute if score RandomTeam options matches 0 run function scaffolding_rush:lobby/text/team/team_label
execute if score RandomTeam options matches 1 run function scaffolding_rush:lobby/text/team/random_label

execute if score RandomTeam options matches 0 run data merge entity @e[type=minecraft:text_display,tag=lobbyRandomLabel,limit=1] {text: '{"text":"random","color":"gray","strikethrough":true}'}
execute if score RandomTeam options matches 1 run data merge entity @e[type=minecraft:text_display,tag=lobbyRandomLabel,limit=1] {text: '{"text":"random","color":"dark_purple","strikethrough":false}'}
