

scoreboard players reset @a start_game
execute if score #admin.exist options matches 1 as @a[tag=admin] run scoreboard players enable @s start_game
execute if score #admin.exist options matches 0 as @a run scoreboard players enable @s start_game
execute as @a[team=] run function scaffolding_rush:team/join/random

# Count active teams
scoreboard players set RemainingTeam data 0
execute if entity @a[team=blue] run scoreboard players add RemainingTeam data 1
execute if entity @a[team=green] run scoreboard players add RemainingTeam data 1
execute if entity @a[team=red] run scoreboard players add RemainingTeam data 1
execute if entity @a[team=yellow] run scoreboard players add RemainingTeam data 1

# Start only if there is 2 teams or more ...
execute if score RemainingTeam data matches 2.. \
        if score #game.clear data matches 0 \
    run function scaffolding_rush:game/start/pre_start
# ... or if the dev mode is active
execute if score DevelopementMode data matches 1 \
        if score #game.clear data matches 0 \
        unless score #game.loading data matches 1 \
    run function scaffolding_rush:game/start/pre_start

# Error if not enough teams
execute if score RemainingTeam data matches ..1 \
    run tellraw @a[scores={option_language=0}] [ \
        {"text":"[BS] ","color":"gold"},{"text":"Not enough player in teams!","color":"red"} \
    ]
execute if score RemainingTeam data matches ..1 \
    run tellraw @a[scores={option_language=1}] [ \
        {"text":"[BS] ","color":"gold"},{"text":"Pas assez de joueur dans les équipes !","color":"red"} \
    ]

# Error if the map reset is not complete
execute if score #game.clear data matches 1 \
    run tellraw @a[scores={option_language=0}] [ \
        {"text":"[BS] ","color":"gold"},{"text":"Please wait, a clear of the map is in progress","color":"red"} \
    ]
execute if score #game.clear data matches 1 \
    run tellraw @a[scores={option_language=1}] [ \
        {"text":"[BS] ","color":"gold"},{"text":"Merci de patienter, une réinitialisation de la carte est en cours","color":"red"} \
    ]

