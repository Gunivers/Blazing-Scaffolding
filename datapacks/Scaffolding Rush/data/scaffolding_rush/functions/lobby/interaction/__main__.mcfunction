
execute as @e[type=interaction,tag=LobbyPresetVillager] if entity @s[nbt={interaction:{}}] run function scaffolding_rush:lobby/interaction/preset_villager/villager
execute as @e[type=interaction,tag=LobbyPresetVillagerNext] if entity @s[nbt={interaction:{}}] run function scaffolding_rush:lobby/interaction/preset_villager/next
execute as @e[type=interaction,tag=LobbyPresetVillagerPrevious] if entity @s[nbt={interaction:{}}] run function scaffolding_rush:lobby/interaction/preset_villager/previous

execute as @e[type=interaction,tag=LobbyTeamPlus] if entity @s[nbt={interaction:{}}] run function scaffolding_rush:lobby/interaction/team/plus
execute as @e[type=interaction,tag=LobbyTeamMinus] if entity @s[nbt={interaction:{}}] run function scaffolding_rush:lobby/interaction/team/minus
execute as @e[type=interaction,tag=LobbyTeamRandom] if entity @s[nbt={interaction:{}}] run function scaffolding_rush:lobby/interaction/team/random

execute as @e[type=interaction,tag=teamBlue] if entity @s[nbt={interaction:{}}] run function scaffolding_rush:lobby/interaction/team/blue
execute as @e[type=interaction,tag=teamGreen] if entity @s[nbt={interaction:{}}] run function scaffolding_rush:lobby/interaction/team/green
execute as @e[type=interaction,tag=teamRed] if entity @s[nbt={interaction:{}}] run function scaffolding_rush:lobby/interaction/team/red
execute as @e[type=interaction,tag=teamYellow] if entity @s[nbt={interaction:{}}] run function scaffolding_rush:lobby/interaction/team/yellow
execute as @e[type=interaction,tag=teamSpectate] if entity @s[nbt={interaction:{}}] run function scaffolding_rush:lobby/interaction/team/spectate
execute as @e[type=interaction,tag=teamRandom] if entity @s[nbt={interaction:{}}] run function scaffolding_rush:lobby/interaction/team/random_team


execute as @e[type=interaction,tag=LobbyHTP] if entity @s[nbt={interaction:{}}] run function scaffolding_rush:lobby/interaction/how_to_play
execute as @e[type=interaction,tag=LobbyCredits] if entity @s[nbt={interaction:{}}] run function scaffolding_rush:lobby/interaction/credits


execute as @e[tag=lobbyInteraction] run data remove entity @s interaction
