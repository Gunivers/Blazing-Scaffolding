
fill -90 0 -90 90 0 90 bedrock
fill -90 1 -90 90 1 90 grass_block

schedule function scaffolding_rush:lobby/load 2t
execute if score DevelopementMode global matches 1 run schedule function scaffolding_rush:broadcast/lobby_loaded 6t

scoreboard players set ClearLobby global 0


bossbar remove reset_lobby_en
bossbar remove reset_lobby_fr