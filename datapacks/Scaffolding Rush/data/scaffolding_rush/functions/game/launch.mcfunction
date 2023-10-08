scoreboard players reset @a trigger.start_game
execute if score #admin.exist options matches 1 as @a[tag=admin] run scoreboard players enable @s trigger.start_game
execute if score #admin.exist options matches 0 as @a run scoreboard players enable @s trigger.start_game

tag @s add titleStart

# Count active teams
scoreboard players set RemainingTeam data 0
execute if entity @a[team=blue] run scoreboard players add RemainingTeam data 1
execute if entity @a[team=green] run scoreboard players add RemainingTeam data 1
execute if entity @a[team=red] run scoreboard players add RemainingTeam data 1
execute if entity @a[team=yellow] run scoreboard players add RemainingTeam data 1
execute as @a[team=random] run scoreboard players add RemainingTeam data 1

execute if score RemainingTeam data matches 2.. if score #game.clear data matches 0 run function scaffolding_rush:game/countdown

# Start the game even if there are not enough players
execute if score DevelopementMode data matches 1 if score #game.clear data matches 0 unless score #game.loading data matches 1 run function scaffolding_rush:game/countdown

execute if score RemainingTeam data matches ..1 run tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Not enough player in teams!","color":"red"}]
execute if score #game.clear data matches 1 run tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Please wait, a clear of the map is in progress","color":"red"}]

execute if score RemainingTeam data matches ..1 run tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Pas assez de joueur dans les équipes !","color":"red"}]
execute if score #game.clear data matches 1 run tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Merci de patienter, une réinitialisation de la carte est en cours","color":"red"}]

effect give @a minecraft:instant_health 1 100 true
effect give @a minecraft:fire_resistance 20 100 true
effect give @a minecraft:resistance 10 100 true