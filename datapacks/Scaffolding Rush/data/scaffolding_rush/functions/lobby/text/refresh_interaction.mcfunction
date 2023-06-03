
# Preset villager
data modify entity @e[type=text_display,tag=LobbyPresetVillagerNext,limit=1,tag=!looked_at] text set value '{"text":">>","bold":true,"color":"#7027FF"}'
data modify entity @e[type=text_display,tag=LobbyPresetVillagerNext,limit=1,tag=looked_at] text set value '{"text":">>","bold":true,"color":"#fbfce6"}'
data modify entity @e[type=text_display,tag=LobbyPresetVillagerPrevious,limit=1,tag=!looked_at] text set value '{"text":"<<","bold":true,"color":"#7027FF"}'
data modify entity @e[type=text_display,tag=LobbyPresetVillagerPrevious,limit=1,tag=looked_at] text set value '{"text":"<<","bold":true,"color":"#fbfce6"}'

# Team options
data modify entity @e[type=text_display,tag=LobbyTeamPlus,limit=1,tag=!looked_at] text set value '{"text":"+","bold":true,"color":"gold"}'
data modify entity @e[type=text_display,tag=LobbyTeamPlus,limit=1,tag=looked_at] text set value '{"text":"+","bold":true,"color":"#fbfce6"}'
execute if score TeamNumber options matches 4 run data modify entity @e[type=text_display,tag=LobbyTeamPlus,limit=1] text set value '{"text":"+","bold":true,"color":"gray"}'
data modify entity @e[type=text_display,tag=LobbyTeamMinus,limit=1,tag=!looked_at] text set value '{"text":"-","bold":true,"color":"gold"}'
data modify entity @e[type=text_display,tag=LobbyTeamMinus,limit=1,tag=looked_at] text set value '{"text":"-","bold":true,"color":"#fbfce6"}'
execute if score TeamNumber options matches 2 run data modify entity @e[type=text_display,tag=LobbyTeamMinus,limit=1] text set value '{"text":"-","bold":true,"color":"gray"}'
data modify entity @e[type=text_display,tag=LobbyTeamRandom,limit=1,tag=!looked_at] text set value '{"text":"random","bold":true,"color":"gold"}'
data modify entity @e[type=text_display,tag=LobbyTeamRandom,limit=1,tag=looked_at] text set value '{"text":"random","bold":true,"color":"#fbfce6"}'


