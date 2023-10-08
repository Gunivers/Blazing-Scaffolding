
schedule function scaffolding_rush:lobby/load 2t
execute if score DevelopementMode data matches 1 run schedule function scaffolding_rush:broadcast/lobby_loaded 6t

scoreboard players set #lobby.clear data 0


bossbar remove reset_lobby_en
bossbar remove reset_lobby_fr