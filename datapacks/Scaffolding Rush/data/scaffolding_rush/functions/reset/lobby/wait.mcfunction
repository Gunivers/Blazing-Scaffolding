
execute unless entity @e[type=armor_stand,name="LobbyResetWait"] run schedule function scaffolding_rush:reset/lobby/wait 5t
execute if entity @e[type=armor_stand,name="LobbyResetWait"] run schedule function scaffolding_rush:reset/lobby/start 5t
execute if entity @e[type=armor_stand,name="LobbyResetWait"] run kill @e[type=armor_stand,name="LobbyResetWait"]
