scoreboard players set @s language 0

tellraw @s ["",{"text":"\n"},{"text":"  Welcome on ","color":"gold"},{"text":"Blazing Scaffolding","bold":true,"color":"gold"},{"text":"\u2122!","color":"gold"},{"text":"\n"},{"text":"      a game by the ","color":"gray"},{"text":"Gunivers community","color":"gold","clickEvent":{"action":"open_url","value":"https://gunivers.net/"}},{"text":"\n\n"},{"text":"   ","color":"light_purple"},{"text":"[Link to the map]","color":"light_purple","clickEvent":{"action":"open_url","value":"https://gunivers.net/blazing-scaffolding/"}},{"text":"  "},{"text":"[Discord]","color":"blue","clickEvent":{"action":"open_url","value":"https://discord.gg/E8qq6tN"}},{"text":"\n\n"},{"text":"choose your language: ","color":"gray"},{"text":"[English]","color":"green","clickEvent":{"action":"run_command","value":"/trigger opt_language set 1"}},{"text":" ","color":"green"},{"text":"[Français]","color":"green","clickEvent":{"action":"run_command","value":"/trigger opt_language set 2"}},{"text":"\n "}]

scoreboard players operation @a gameId = GameId global

execute if score GameLobby global matches 1 run schedule function scaffolding_rush:tutorial/msg_lobby 10s

teleport @s 0 24 0 0 0
spawnpoint @s 0 24 0 0
