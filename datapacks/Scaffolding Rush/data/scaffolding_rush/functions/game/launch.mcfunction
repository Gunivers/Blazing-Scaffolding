scoreboard players reset @a StartGame
execute if score Admin options matches 1 as @a[tag=admin] run scoreboard players enable @s StartGame
execute if score Admin options matches 0 as @a run scoreboard players enable @s StartGame

execute if score RemainingTeam global matches 2.. if score ClearGame global matches 0 run function scaffolding_rush:game/countdown
execute if score DevelopementMode global matches 1 run function scaffolding_rush:game/countdown

execute if score RemainingTeam global matches ..1 run tellraw @a[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"text":"Not enough teams","color":"red"}]
execute if score ClearGame global matches 1 run tellraw @a[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"text":"Please wait, a clear of the map is in progress","color":"red"}]

execute if score RemainingTeam global matches ..1 run tellraw @a[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"text":"Pas assez de team !","color":"red"}]
execute if score ClearGame global matches 1 run tellraw @a[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"text":"Please wait, a clear of the map is in progress","color":"red"}]
