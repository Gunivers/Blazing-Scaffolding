
execute unless entity @e[type=armor_stand,name="GameResetWait"] run schedule function scaffolding_rush:reset/game/wait 5t
execute if entity @e[type=armor_stand,name="GameResetWait"] run schedule function scaffolding_rush:reset/game/start 5t
execute if entity @e[type=armor_stand,name="GameResetWait"] run kill @e[type=armor_stand,name="GameResetWait"]