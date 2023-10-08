# Hover interaction
tag @e[type=text_display,tag=lobbyText,tag=looked_at_tick] remove looked_at_tick
execute as @a at @s if entity @e[type=interaction,tag=LobbyPresetVillagerNext,distance=..3.5] anchored eyes facing entity @e[type=interaction,tag=LobbyPresetVillagerNext,limit=1] eyes positioned ~ ~0.1 ~ anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.1] run tag @e[type=text_display,tag=LobbyPresetVillagerNext,limit=1] add looked_at_tick
execute as @a at @s if entity @e[type=interaction,tag=LobbyPresetVillagerPrevious,distance=..3.5] anchored eyes facing entity @e[type=interaction,tag=LobbyPresetVillagerPrevious,limit=1] eyes positioned ~ ~0.1 ~ anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.1] run tag @e[type=text_display,tag=LobbyPresetVillagerPrevious,limit=1] add looked_at_tick

execute as @a at @s if entity @e[type=interaction,tag=LobbyTeamPlus,distance=..3.5] anchored eyes facing entity @e[type=interaction,tag=LobbyTeamPlus,limit=1] eyes positioned ~ ~0.1 ~ anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.1] run tag @e[type=text_display,tag=LobbyTeamPlus,limit=1] add looked_at_tick
execute as @a at @s if entity @e[type=interaction,tag=LobbyTeamMinus,distance=..3.5] anchored eyes facing entity @e[type=interaction,tag=LobbyTeamMinus,limit=1] eyes positioned ~ ~0.1 ~ anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.1] run tag @e[type=text_display,tag=LobbyTeamMinus,limit=1] add looked_at_tick
execute as @a at @s if entity @e[type=interaction,tag=LobbyTeamRandom,distance=..3.5] anchored eyes facing entity @e[type=interaction,tag=LobbyTeamRandom,limit=1] eyes positioned ~ ~0.1 ~ anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.1] run tag @e[type=text_display,tag=LobbyTeamRandom,limit=1] add looked_at_tick

execute as @a[tag=!titleJoinTeam] at @s if entity @e[type=interaction,tag=lobbyTeam,distance=..3.5] anchored eyes facing entity @e[type=interaction,tag=lobbyTeam] eyes positioned ~ ~0.1 ~ anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.25] run function scaffolding_rush:lobby/interaction/join_team_msg
execute as @a[tag=!titleStart] at @s if entity @e[type=text_display,tag=startLabel,distance=..2] anchored eyes facing 0 25 6 positioned ~ ~0.1 ~ anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.25] run function scaffolding_rush:lobby/interaction/start_msg

execute as @e[type=text_display,tag=looked_at_tick,tag=!looked_at] run tag @s add refresh_text
execute as @e[type=text_display,tag=looked_at_tick,tag=!looked_at] run tag @s add looked_at
execute if entity @e[type=text_display,tag=refresh_text] run function scaffolding_rush:lobby/text/refresh_interaction

execute as @e[type=text_display,tag=!looked_at_tick,tag=looked_at] run tag @s add refresh_text
execute as @e[type=text_display,tag=!looked_at_tick,tag=looked_at] run tag @s remove looked_at
execute if entity @e[type=text_display,tag=refresh_text] run function scaffolding_rush:lobby/text/refresh_interaction

tag @e[type=text_display,tag=lobbyText,tag=refresh_text] remove refresh_text
