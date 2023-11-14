
tellraw @s ["",{"text":"\n"},{"text":"  "},{"translate":"blazing_scaffolding.welcome_on","color":"gold"},{"text":" Blazing Scaffolding","bold":true,"color":"gold"},{"text":"\u2122!","color":"gold"},{"text":"\n      "},{"translate":"blazing_scaffolding.a_game_by_the","color":"gray"},{"text":" "},{"translate":"blazing_scaffolding.gunivers_community","color":"gold","clickEvent":{"action":"open_url","value":"https://gunivers.net/"}},{"text":"\n\n"},{"text":"   ","color":"light_purple"},{"translate":"blazing_scaffolding.link_to_the_map","color":"light_purple","clickEvent":{"action":"open_url","value":"https://gunivers.net/blazing-scaffolding/"}},{"text":"  "},{"text":"[Discord]","color":"blue","clickEvent":{"action":"open_url","value":"https://discord.gg/E8qq6tN"}},{"text":"\n"}]

execute if score #lobby.active data matches 1 run schedule function scaffolding_rush:tutorial/msg_lobby 10s

teleport @s 0 24 0 0 0