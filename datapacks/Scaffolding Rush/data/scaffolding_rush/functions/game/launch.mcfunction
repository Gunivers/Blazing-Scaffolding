scoreboard players reset @a StartGame
execute if score Admin options matches 1 as @a[tag=admin] run scoreboard players enable @s StartGame
execute if score Admin options matches 0 as @a run scoreboard players enable @s StartGame

# Count active teams
scoreboard players set RemainingTeam global 0
execute if entity @a[team=blue] run scoreboard players add RemainingTeam global 1
execute if entity @a[team=green] run scoreboard players add RemainingTeam global 1
execute if entity @a[team=red] run scoreboard players add RemainingTeam global 1
execute if entity @a[team=yellow] run scoreboard players add RemainingTeam global 1
execute as @a[team=random] run scoreboard players add RemainingTeam global 1

execute if score RemainingTeam global matches 2.. if score ClearGame global matches 0 run function scaffolding_rush:game/countdown

# Start the game even if there are not enough players
execute if score DevelopementMode global matches 1 if score ClearGame global matches 0 unless score GameLoading global matches 1 run function scaffolding_rush:game/countdown

execute if score RemainingTeam global matches ..1 run tellraw @a[scores={language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Not enough player in teams!","color":"red"}]
execute if score ClearGame global matches 1 run tellraw @a[scores={language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Please wait, a clear of the map is in progress","color":"red"}]

execute if score RemainingTeam global matches ..1 run tellraw @a[scores={language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Pas assez de joueur dans les équipes !","color":"red"}]
execute if score ClearGame global matches 1 run tellraw @a[scores={language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Merci de patienter, une réinitialisation de la carte est en cours","color":"red"}]

effect give @a minecraft:instant_health 1 100 true
effect give @a minecraft:fire_resistance 20 100 true
effect give @a minecraft:resistance 10 100 true