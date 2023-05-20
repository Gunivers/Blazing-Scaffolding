
execute as @e[type=interaction,tag=LobbyPresetVillager] if entity @s[nbt={interaction:{}}] run function scaffolding_rush:lobby/interaction/preset_villager/villager
execute as @e[type=interaction,tag=LobbyPresetVillagerNext] if entity @s[nbt={interaction:{}}] run function scaffolding_rush:lobby/interaction/preset_villager/next
execute as @e[type=interaction,tag=LobbyPresetVillagerPrevious] if entity @s[nbt={interaction:{}}] run function scaffolding_rush:lobby/interaction/preset_villager/previous

execute as @e[type=interaction,tag=LobbyTeamPlus] if entity @s[nbt={interaction:{}}] run function scaffolding_rush:lobby/interaction/team/plus
execute as @e[type=interaction,tag=LobbyTeamMinus] if entity @s[nbt={interaction:{}}] run function scaffolding_rush:lobby/interaction/team/minus
execute as @e[type=interaction,tag=LobbyTeamRandom] if entity @s[nbt={interaction:{}}] run function scaffolding_rush:lobby/interaction/team/random


execute as @e[tag=lobbyInteraction] run data remove entity @s interaction
