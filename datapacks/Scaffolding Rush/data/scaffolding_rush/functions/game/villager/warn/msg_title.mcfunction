
execute if entity @s[team=blue] if entity @e[type=villager,tag=game_villager,tag=blue_villager,scores={YEntity=..1}] run function scaffolding_rush:game/villager/warn/msg_title/blue
execute if entity @s[team=green] if entity @e[type=villager,tag=game_villager,tag=green_villager,scores={YEntity=..1}] run function scaffolding_rush:game/villager/warn/msg_title/green
execute if entity @s[team=red] if entity @e[type=villager,tag=game_villager,tag=red_villager,scores={YEntity=..1}] run function scaffolding_rush:game/villager/warn/msg_title/red
execute if entity @s[team=yellow] if entity @e[type=villager,tag=game_villager,tag=yellow_villager,scores={YEntity=..1}] run function scaffolding_rush:game/villager/warn/msg_title/yellow
