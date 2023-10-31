# Preset villager
data merge entity @e[type=text_display,tag=LobbyPresetVillagerNext,limit=1,tag=!looked_at] {text: '{"text":">>","bold":true,"color":"#7027FF"}', background: 0}
data merge entity @e[type=text_display,tag=LobbyPresetVillagerNext,limit=1,tag=looked_at] {text: '{"text":">>","bold":true,"color":"#fbfce6"}', background: -9426945}
data merge entity @e[type=text_display,tag=LobbyPresetVillagerPrevious,limit=1,tag=!looked_at] {text: '{"text":"<<","bold":true,"color":"#7027FF"}', background: 0}
data merge entity @e[type=text_display,tag=LobbyPresetVillagerPrevious,limit=1,tag=looked_at] {text: '{"text":"<<","bold":true,"color":"#fbfce6"}', background: -9426945}

# Team options
data merge entity @e[type=text_display,tag=LobbyTeamPlus,limit=1,tag=!looked_at] {text: '{"text":"+","bold":true,"color":"#7027FF"}', background: 0}
data merge entity @e[type=text_display,tag=LobbyTeamPlus,limit=1,tag=looked_at] {text: '{"text":"+","bold":true,"color": "white"}', background: -9426945}
execute if score TeamNumber options matches 4 run data merge entity @e[type=text_display,tag=LobbyTeamPlus,limit=1] {text: '{"text":"+","bold":true,"color":"gray"}', background: 0}
data merge entity @e[type=text_display,tag=LobbyTeamMinus,limit=1,tag=!looked_at] {text: '{"text":"-","bold":true,"color":"#7027FF"}', background: 0}
data merge entity @e[type=text_display,tag=LobbyTeamMinus,limit=1,tag=looked_at] {text: '{"text":"-","bold":true,"color":"white"}', background: -9426945}
execute if score TeamNumber options matches 2 run data merge entity @e[type=text_display,tag=LobbyTeamMinus,limit=1] {text: '{"text":"-","bold":true,"color":"gray"}', background: 0}

data merge entity @e[type=text_display,tag=LobbyTeamRandom,limit=1,tag=!looked_at] {text: '{"translate":"blazing_scaffolding.random","color":"dark_purple","strikethrough":false}', background: 0}
data merge entity @e[type=text_display,tag=LobbyTeamRandom,limit=1,tag=looked_at] {text: '{"translate":"blazing_scaffolding.random","color":"white","strikethrough":false}', background: -9426945}
