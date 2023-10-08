execute if entity @s[tag=LobbyPresetVillager] on target at @s run function scaffolding_rush:lobby/interaction/events/preset_info
execute if entity @s[tag=LobbyPresetVillagerNext] on target at @s run function scaffolding_rush:lobby/interaction/events/next_preset
execute if entity @s[tag=LobbyPresetVillagerPrevious] on target at @s run function scaffolding_rush:lobby/interaction/events/previous_preset

execute if entity @s[tag=LobbyTeamPlus] on target at @s run function scaffolding_rush:lobby/interaction/events/add_team
execute if entity @s[tag=LobbyTeamMinus] on target at @s run function scaffolding_rush:lobby/interaction/events/remove_team
execute if entity @s[tag=LobbyTeamRandom] on target at @s run function scaffolding_rush:team/random

execute if entity @s[tag=teamBlue] on target at @s run function scaffolding_rush:team/join/blue
execute if entity @s[tag=teamGreen] on target at @s run function scaffolding_rush:team/join/green
execute if entity @s[tag=teamRed] on target at @s run function scaffolding_rush:team/join/red
execute if entity @s[tag=teamYellow] on target at @s run function scaffolding_rush:team/join/yellow
execute if entity @s[tag=teamSpectate] on target at @s run function scaffolding_rush:team/leave

execute if entity @s[tag=LobbyHTP] on target at @s run function scaffolding_rush:lobby/interaction/events/how_to_play
execute if entity @s[tag=LobbyCredits] on target at @s run function scaffolding_rush:lobby/interaction/events/credits

data remove entity @s interaction