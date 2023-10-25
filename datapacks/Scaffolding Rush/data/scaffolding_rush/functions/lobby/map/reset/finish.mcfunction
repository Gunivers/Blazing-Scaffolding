
schedule function scaffolding_rush:lobby/map/setup 2t
execute if score DevelopementMode data matches 1 run schedule function scaffolding_rush:lobby/map/reset/finish_message 6t

scoreboard players set #lobby.clear data 0


bossbar remove reset_lobby

function scaffolding_rush:lobby/map/setup