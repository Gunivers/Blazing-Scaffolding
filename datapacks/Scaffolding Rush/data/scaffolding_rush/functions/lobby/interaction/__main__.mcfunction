# Hover messages
title @a[tag=lobby.tooltip] actionbar [""]
tag @a remove lobby.tooltip
execute as @a[x=0,y=25,z=6,distance=..3] at @s anchored eyes facing 0 25 6 positioned ~ ~0.1 ~ anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run function scaffolding_rush:lobby/interaction/tooltip/start_game
execute as @a[predicate=scaffolding_rush:looking_at/join_team] run function scaffolding_rush:lobby/interaction/tooltip/join_team

# Hover update background
tag @e[type=text_display,tag=looked_at] remove looked_at
execute as @a[predicate=scaffolding_rush:looking_at/next_preset] run tag @e[type=text_display,tag=LobbyPresetVillagerNext,limit=1] add looked_at
execute as @a[predicate=scaffolding_rush:looking_at/previous_preset] run tag @e[type=text_display,tag=LobbyPresetVillagerPrevious,limit=1] add looked_at
execute as @a[predicate=scaffolding_rush:looking_at/team_plus] run tag @e[type=text_display,tag=LobbyTeamPlus,limit=1] add looked_at
execute as @a[predicate=scaffolding_rush:looking_at/team_minus] run tag @e[type=text_display,tag=LobbyTeamMinus,limit=1] add looked_at
execute as @a[predicate=scaffolding_rush:looking_at/team_random] run tag @e[type=text_display,tag=LobbyTeamRandom,limit=1] add looked_at

execute as @e[type=text_display,tag=looked_at,tag=!lobby.refresh_interaction] run function scaffolding_rush:lobby/map/refresh/interaction
execute as @e[type=text_display,tag=looked_at,tag=!lobby.refresh_interaction] run tag @s add lobby.refresh_interaction
execute as @e[type=text_display,tag=!looked_at,tag=lobby.refresh_interaction] run function scaffolding_rush:lobby/map/refresh/interaction
execute as @e[type=text_display,tag=!looked_at,tag=lobby.refresh_interaction] run tag @s remove lobby.refresh_interaction